# coding: utf-8

def default_mappings
  {
    "ABCDEFGHIJKLMNOPQRSTUVWXYZ" => "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
    "abcdefghijklmnopqrstuvwxyz" => "abcdefghijklmnopqrstuvwxyz",
    "0123456789" => "0123456789",

    # gen-delims
    ":" => ":",
    "/" => "/",
    "?" => "?",
    "#" => "#",
    "[" => "[",
    "]" => "]",
    "@" => "@",

    # sub-delims
    "!" => "!",
    "$" => "$",
    "&" => "&",
    "'" => "'",
    "(" => "(",
    ")" => ")",
    "*" => "*",
    "+" => "+",
    "," => ",",
    ";" => ";",
    "=" => "=",

    # unreserved
    "-" => "-",
    "." => ".",
    "_" => "_",
    "~" => "~",

    # others
    " " => "%20",
    "%" => "%25",
    "<" => "%3C",
    ">" => "%3E",
    "\\" => "%5C",
    "`" => "%60",
    "{" => "%7B",
    "|" => "%7C",
    "}" => "%7D",

    # multibyte character
    "あいう" => "%E3%81%82%E3%81%84%E3%81%86",
  }
end

def everything_escaped_mappings
  {
    "ABCDEFGHIJKLMNOPQRSTUVWXYZ" => "%41%42%43%44%45%46%47%48%49%4A%4B%4C%4D%4E%4F%50%51%52%53%54%55%56%57%58%59%5A",
    "abcdefghijklmnopqrstuvwxyz" => "%61%62%63%64%65%66%67%68%69%6A%6B%6C%6D%6E%6F%70%71%72%73%74%75%76%77%78%79%7A",
    "0123456789" => "%30%31%32%33%34%35%36%37%38%39",

    # gen-delims
    ":" => "%3A",
    "/" => "%2F",
    "?" => "%3F",
    "#" => "%23",
    "[" => "%5B",
    "]" => "%5D",
    "@" => "%40",

    # sub-delims
    "!" => "%21",
    "$" => "%24",
    "&" => "%26",
    "'" => "%27",
    "(" => "%28",
    ")" => "%29",
    "*" => "%2A",
    "+" => "%2B",
    "," => "%2C",
    ";" => "%3B",
    "=" => "%3D",

    # unreserved
    "-" => "%2D",
    "." => "%2E",
    "_" => "%5F",
    "~" => "%7E",

    # others
    " " => "%20",
    "%" => "%25",
    "<" => "%3C",
    ">" => "%3E",
    "\\" => "%5C",
    "`" => "%60",
    "{" => "%7B",
    "|" => "%7C",
    "}" => "%7D",

    # multibyte character
    "あいう" => "%E3%81%82%E3%81%84%E3%81%86",
    "あいう".encode(Encoding::Windows_31J) => "%82%A0%82%A2%82%A4".encode(Encoding::Windows_31J),
  }
end

def multibyte_mappings
  [
    {
      source: "あいう".encode(Encoding::Windows_31J),
      encoded: "%82%A0%82%A2%82%A4",
      encoding: Encoding::Windows_31J
    },
  ]
end
