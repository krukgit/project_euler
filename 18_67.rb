rows = ARGF.read
rows = rows.split("\n")

rows[0] = rows[0].split(" ")
rows[0][0] = rows[0][0].to_i

rows.each_with_index do |row, i|
  if i != 0
    rows[i] = row.split(" ")
    rows[i].each_with_index do |num, j|
      rows[i][j] = rows[i][j].to_i
      if j == 0
        rows[i][j] += rows[i-1][j]
      elsif j==i
        rows[i][j] += rows[i-1][j-1]
      else
        rows[i][j] += [rows[i-1][j-1], rows[i-1][j]].max
      end
    end
  end
end

p rows[rows.size-1].max
