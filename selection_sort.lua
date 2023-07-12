function selection_sort(items, size)
    for n = 1, size - 1 do
        local index = n

        for i = n + 1, size do
            if items[i] < items[index] then
                index = i
            end
        end

        items[n], items[index] = items[index], items[n]
    end
end

function main()
    local items = {
        2.54, 5.85, 4.18, 0.54, 4.36, 2.33,
        6.36, 3.32, 7.65, 4.56, 9.56, 1.24
    }

    selection_sort(items, #items)

    for i = 1, #items do print(items[i]) end
end
