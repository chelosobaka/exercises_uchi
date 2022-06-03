arr = [ nil, 2, :foo, "bar", "foo", "apple", "orange", :orange, 45, nil,
:foo, :bar, 25, 45, :apple, "bar", nil]
h = {}
arr.each do |el|
  if h.has_key?(el)
    h[el] += 1
  else
    h[el] = 1
  end
end
