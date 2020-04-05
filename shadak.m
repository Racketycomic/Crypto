function outm=shadak(len)
  i=1;
  while true,
      a=numel(magic(i));
      if a>len,
        size=i;
        break;
      end;
      i++;
  end;
  b=magic(size);
  b=b(:);
  tot=a-len;
  while true,
    if tot==0,
      break;
    end;
    b(tot,:)=[];
    tot--;
  end
  outm=b';
