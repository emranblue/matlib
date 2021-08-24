function y=grad(f,m,n)
  syms x y
  g=gradient(f);
  y=subs(g,{x,y},{m,n});
end 
