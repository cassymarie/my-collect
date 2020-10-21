def my_collect(array)
        counter = 0
        new_collection = []
        while counter < array.length do
            new_collection << yield(array[counter])
            counter += 1
        end
        return new_collection
end

languages = ['ruby', 'javascript', 'python', 'objective-c']
students = ['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller']

my_collect(languages) { |name| "#{name.upcase}" }