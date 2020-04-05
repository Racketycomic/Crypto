while true,
  ch=input(sprintf("Menu\n1.Encrypt\n2.Decrypt\n3.Exit\n"));
  switch (ch),
    case 1
    encrypt();
    case 2
    cipher=input("Enter the cipher text\n",'s')
    key=input("Enter the key",'s')
    decrypt(cipher,key)
    case 3
    break;
  end
end
