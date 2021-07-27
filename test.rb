def process_text(array)
    resp=""
    array.each { |x| resp+=x.chop}
    return resp
end 

puts process_text(["Hi, \n", " Are you having fun?    "]).is_a? "Hi, Are you having fun?"