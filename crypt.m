function out=crypt(message,key)
  nk=key;
  nm=message;
  n=length(nk);
  k=length(nm);
  index=1:k;
  for i=index,
    in=mod(i,n);
    if(in==0),
      in=in+1;
    end;
    nm(1,i)+=nk(1,in);
  end
  nm=mod(nm,26);
  nm+=97;
  cipher=char(nm);
  out=disp(sprintf("%s",cipher));
  endfunction
