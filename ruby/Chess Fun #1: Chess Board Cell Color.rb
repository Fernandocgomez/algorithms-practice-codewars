def chessboard_cell_color(cell1, cell2)
    letters = ('A'..'H').to_a
    colors = ['Black', 'White','Black', 'White','Black', 'White','Black', 'White']
    arr_cells = []
    arr_colors = []
    hash = {}
    for i in 1..8
        for x in letters
            arr_cells << x + i.to_s
        end
        for x in 0..7
            arr_colors << colors[x]
        end
        colors = colors.reverse
    end
    hash = Hash[arr_cells.zip arr_colors]
    if hash[cell1] == hash[cell2]
        return true
    else
        return false
    end
end


p chessboard_cell_color("A1","C3") #true
p chessboard_cell_color("A1","H3") #false
p chessboard_cell_color("A1","A2") #false

# def chessboard_cell_color(cell1, cell2)
#     chess_board = ('A'..'H').to_a.product(('1'..'9').to_a)
#     chess_board.index(cell1.chars).even? == chess_board.index(cell2.chars).even?
# end

# create a hash with the key as the cell and the value as the color
# then use a if stament to determinate if the color is the same or not
# 64 squares half of them are white and the other half are black


