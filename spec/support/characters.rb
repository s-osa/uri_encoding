def gen_delims
  %w(: / ? # [ ] @)
end

def sub_delims
  %w(! $ & ' ( ) * + , ; =)
end

def reserved_characters
  gen_delims + sub_delims
end

def unreserved_characters
  alphabets + digits + unreserved_signs
end

def alphabets
  ("A".."Z").to_a + ("a".."z").to_a
end

def digits
  (0..9).to_a.map(&:to_s)
end

def unreserved_signs
  %w(- . _ ~)
end
