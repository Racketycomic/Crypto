function cipher=encrypt()
message=input("Enter the message without any spaces\n","s")
key=input("Enter the key\n",'s')
len=length(key);
b=shadak(len);
message=tolower(message);
key=tolower(key);
nm=double(message);
nk=double(key);
newlen=length(nm);
index=1:newlen;
for i=index,
  if nm(1,i)!=32,
    nm(1,i)-=97;
  end
end
nk-=97;
nk=nk+b;
cipher=crypt(nm,nk);
cipher=trans(cipher);
cipher=char(cipher);
disp(cipher)
