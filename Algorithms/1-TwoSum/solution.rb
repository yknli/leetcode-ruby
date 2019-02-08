# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  i = nums.length-1
  find_index = nums.index(target - nums.pop)
  if !find_index.nil?
    [find_index, i]
  else
    two_sum(nums, target) || []
  end
end

