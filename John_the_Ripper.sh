# this simple lab demostrates how john the ripper is used to crack passwords, this was tested on both weak and strong passwords

┌──(kali㉿kali)-[~]
└─$ cat > myfile.txt
My password is 12345
^C
                                                                                                                                                                                                                  
┌──(kali㉿kali)-[~]
└─$ cat myfile.txt  
My password is 12345
                                                                                                                                                                                                                  
┌──(kali㉿kali)-[~]
└─$ 


┌──(kali㉿kali)-[~]
└─$ cat myfile.txt 
My password is 12345

# create password protected file                                                                                                                                                                                                                
┌──(kali㉿kali)-[~]
└─$ zip -e test.zip myfile.txt

Enter password: 
Verify password: 
  adding: myfile.txt (stored 0%)
                                                                                                                                                                                                                  
┌──(kali㉿kali)-[~]
└─$ ls
Desktop  Documents  Downloads  Music  myfile.txt  Pictures  Public  Templates  test.zip  Videos
                                                                                                                                                                                                                  
┌──(kali㉿kali)-[~]
└─$ cat test.zip 
PK
        :MJYp�!
myfile.txtUT    ��g��gux
                        �����C��ҿ�t�iߠ�
                                       }��G(�Ρaf.�Pp�!PK
        :MJYp�!
▒��myfile.txtUT��gux
                    ��PKPu                                                                                                                                                                                                                  
┌──(kali㉿kali)-[~]
└─$ 


┌──(kali㉿kali)-[~]
└─$ ls
Desktop  Documents  Downloads  Music  myfile.txt  Pictures  Public  Templates  test.zip  Videos
                                                                                                                                                                                                                  
┌──(kali㉿kali)-[~]
└─$ cat test.zip
PK
        :MJYp�!
myfile.txtUT    ��g��gux
                        �����C��ҿ�t�iߠ�
                                       }��G(�Ρaf.�Pp�!PK
        :MJYp�!
▒��myfile.txtUT��gux
                    ��PKPu                                                                                                                                                                                                                  
# generate hash of the file and store the result in hash.txt
┌──(kali㉿kali)-[~]
└─$ zip2john test.zip > hash.txt

ver 1.0 efh 5455 efh 7875 test.zip/myfile.txt PKZIP Encr: 2b chk, TS_chk, cmplen=33, decmplen=21, crc=9B170070 ts=4D3A cs=4d3a type=0
                                                                                                                                                                                                                  
┌──(kali㉿kali)-[~]
└─$ ls
Desktop  Documents  Downloads  hash.txt  Music  myfile.txt  Pictures  Public  Templates  test.zip  Videos
                                                                                                                                                                                                                  
┌──(kali㉿kali)-[~]
└─$ cat hash.txt 
test.zip/myfile.txt:$pkzip$1*2*2*0*21*15*9b170070*0*44*0*21*4d3a*1d1082a516a243ecacd2bf9f74c269dfa0de0c7df8ec471128decea10e61662e95*$/pkzip$:myfile.txt:test.zip::test.zip

 # use john the ripper to crack the password from the generated hash                                                                                                                                                                                                           
┌──(kali㉿kali)-[~]
└─$ john --wordlist=/usr/share/wordlists/rockyou.txt hash.txt

Using default input encoding: UTF-8
Loaded 1 password hash (PKZIP [32/64])
Will run 4 OpenMP threads
fopen: /usr/share/wordlists/rockyou.txt: No such file or directory
                                                                                                                                                                                                                  
┌──(kali㉿kali)-[~]
└─$ sudo apt-get install wordlists

[sudo] password for kali: 
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
wordlists is already the newest version (2023.2.0).
wordlists set to manually installed.
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
                                                                                                                                                                                                                  
┌──(kali㉿kali)-[~]
└─$ sudo gzip -d /usr/share/wordlists/rockyou.txt.gz

                                                                                                                                                                                                                  
┌──(kali㉿kali)-[~]
└─$ ls /usr/share/wordlists/rockyou.txt

/usr/share/wordlists/rockyou.txt
                                                                                                                                                                                                                  
┌──(kali㉿kali)-[~]
└─$ john --wordlist=/usr/share/wordlists/rockyou.txt hash.txt

Using default input encoding: UTF-8
Loaded 1 password hash (PKZIP [32/64])
Will run 4 OpenMP threads
Press 'q' or Ctrl-C to abort, almost any other key for status
123456           (test.zip/myfile.txt)     
1g 0:00:00:00 DONE (2024-10-10 09:53) 25.00g/s 204800p/s 204800c/s 204800C/s 123456..whitetiger
Use the "--show" option to display all of the cracked passwords reliably
Session completed. 
                                                                                                                                                                                                                  
┌──(kali㉿kali)-[~]
└─$ zip -e test_strong.zip myfile.txt

Enter password: 
Verify password: 
  adding: myfile.txt (stored 0%)
                                                                                                                                                                                                                  
┌──(kali㉿kali)-[~]
└─$ ls                                 
Desktop  Documents  Downloads  hash.txt  Music  myfile.txt  Pictures  Public  Templates  test_strong.zip  test.zip  Videos
                                                                                                                                                                                                                  
┌──(kali㉿kali)-[~]
└─$ cat test_strong.zip 
PK
        :MJYp�!
myfile.txtUT    ��g��gux
                        ��؇X���)4��J�������RC��
��7"evv�,Pp�!PK
        :MJYp�!
▒��myfile.txtUT��gux
                    ��PKPu                                                                                                                                                                                                                  
┌──(kali㉿kali)-[~]
└─$ zip2john test_strong.zip > hash_strong.txt

ver 1.0 efh 5455 efh 7875 test_strong.zip/myfile.txt PKZIP Encr: 2b chk, TS_chk, cmplen=33, decmplen=21, crc=9B170070 ts=4D3A cs=4d3a type=0
                                                                                                                                                                                                                  
┌──(kali㉿kali)-[~]
└─$ cat hash_strong.txt

test_strong.zip/myfile.txt:$pkzip$1*2*2*0*21*15*9b170070*0*44*0*21*4d3a*d88758dce6e72934fccd4a94a387eef00eeee65243f3ca0afa983722657676ea2c*$/pkzip$:myfile.txt:test_strong.zip::test_strong.zip
                                                                                                                                                                                                                  
┌──(kali㉿kali)-[~]
└─$ john --wordlist=/usr/share/wordlists/rockyou.txt hash_strong.txt

Using default input encoding: UTF-8
Loaded 1 password hash (PKZIP [32/64])
Will run 4 OpenMP threads
Press 'q' or Ctrl-C to abort, almost any other key for status
0g 0:00:00:02 DONE (2024-10-10 09:58) 0g/s 6182Kp/s 6182Kc/s 6182KC/s "2parrow"..*7¡Vamos!
Session completed. 
                                                                                                                                                                                                                  
┌──(kali㉿kali)-[~]
