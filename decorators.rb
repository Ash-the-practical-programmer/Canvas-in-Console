Decorators = [
->(s){puts "+"+"—+"*(s.size/2)+"\n"+s+"\n+"+"—+"*(s.size/2)},
->(s){puts "* "*(s.size/2+1)+"\n"+s+"\n"+"* "*(s.size/2+1)},
->(s){puts "*"*s.size+"\n"+s+"\n"+"*"*s.size},
->(s){puts "*"*(s.size+2)+"\n "+s+"\n"+"*"*(s.size+2)},
->(s){ puts " "+"—"*s.size+"\n"+"|"+s+"|"+"\n"+" "+"—"*s.size},
->(s){puts "-"*s.size+"\n"+s+"\n"+"-"*s.size},
->(s){puts "+"*s.size+"\n"+s+"\n"+"+"*s.size},
->(s){puts "—"*s.size+"\n"+s+"\n"+"—"*s.size},
->(s){puts "* "*(s.size/2)+"*\n"+s+"\n"+"* "*(s.size/2)+"*"},
->(s){puts "+ "*(s.size/2)+"+"+"\n"+s+"\n"+"+ "*(s.size/2)+"+"},
->(s){puts "\""*s.size+"\n"+s+"\n"+"\""*s.size},
->(s){puts "‡"*(s.size+2)+"\n"+s+"\n"+"‡"*(s.size+2)},
->(s){puts "‡"*s.size+"\n"+"‡"+s+"‡"+"\n"+"‡"*s.size},
->(s){puts "="*s.size+"\n"+s+"\n"+"="*s.size},
->(s){puts "="*(s.size+2)+"\n="+s+"=\n"+"="*(s.size+2)},
->(s){ puts "|"+"–"*s.size+"|"+"\n"+"|"+s+"|"+"\n"+"|"+"–"*s.size+"|"},
->(s){ puts " "+"–"*s.size++"\n"+"|"+s+"|"+"\n"+" "+"–"*s.size},
->(s){puts "#"*s.size+"\n"+s+"\n"+"#"*s.size},
->(s){puts "'"*s.size+"\n|"+s+"|\n"+"'"*s.size}
]
