function tout=trans(mat)
  mat=double(mat);
  extra=[];
  j=1;
  len=length(mat);
  angs=mod(len,5);
  breakpoint=len-angs;
  if angs!=0,
    while true,
      if breakpoint==len,
        break;
      end;
      extra(1,j)=mat(1,len);
      j++;
      mat(:,len)=[];
      len--;
    end;
  end;
  mat=reshape(mat,5,[]);
  mat=circshift(mat,4);
  mat=reshape(mat,1,len);
  if !isnull(extra),
    tout=horzcat(mat,extra);
  else
    tout=mat;
  end
endfunction
