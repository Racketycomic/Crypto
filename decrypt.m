function plain=decrypt(cipher,key)
  cipher=tolower(cipher);
  key=tolower(key);
  ak=double(key);
  nc=double(cipher);
  n1=length(nc);
  k1=length(ak);
  nc=retrans(nc);
  b=shadak(k1);
  ak=ak+b;
  index=1:n1;
  for i=index,
    in=mod(i,k1);
    if in==0,
      in=in+1;
    end
    low=nc(1,i)-ak(1,in);
    code=low+97;
    if low < 0,
      code=123+low;
      plain(1,i)=code;
    else
      plain(1,i)=code;
    end
  end
  newlen=length(plain);
  index=1:newlen;
  for i=index,
    if plain(1,i) < 97,
      plain(1,i)-=97;
      plain(1,i)+=123;
    end
  end
  newlen=length(plain);
  plain2=char(plain);
  plain=disp(sprintf("%s",plain2));
endfunction
