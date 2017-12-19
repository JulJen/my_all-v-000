require 'pry'

def my_all?(collection)
  i = 0
   block_return_values = []
   while i < collection.length
     block_return_values << yield(collection[i])
     i += 1
   end

   if block_return_values.include?(false)
     false
   else
     true
   end
end

# it "returns false when the block condition is not met" do
#   expect(my_all?(collection) {|i| i < 3}).to eq(false)
# end


# it "yields the correct element to the block" do
#   yielded = []
#   my_all?(collection) do |number|
#     yielded.push number
#   end
#   expect(yielded).to eq([1,2,3])
# end
#
# it "returns false when the block condition is not met" do
#   expect(my_all?(collection) {|i| i < 3}).to eq(false)
# end
#
# it "returns true when the block condition is met" do
#   expect(my_all?(collection) {|i| i < 4}).to eq(true)
# end
# end
