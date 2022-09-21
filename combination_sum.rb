def combination_sum(candidates, target)
    if !candidates || candidates.empty?
        return []
    end
    backtracking(candidates, target)
end
def backtracking(candidates, target, index = 0, path = [], result = [], total = 0)
    if total == target
        result.push(path)
        return
    end
    index.upto(candidates.size - 1) do |i|
          next if total + candidates[i] >  target
        backtracking(candidates, target, i, path + [candidates[i]], result, total + candidates[i])
    end
    result
end

p combination_sum([2,3,6,7],7)



