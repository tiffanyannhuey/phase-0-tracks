# What are some of the key design philosophies of the Linus OS? 

1. It always assumes that the user knows what they are doing and allows you to do anything you tell it. 
2. It's epitomized by the ease with which one can open a terminal emulator to access the CLI. 
3. Each of the commands is a filter - will take an input (usually from Standard Input), "filters" the data stream by making some change to it, then sends the resulting data stream to Standard Output. Standard Input and Standard Output are know collectively as STDIO. 
4. Each of the commands in this program are fairly small, and each performs a specific task 
5. Use shell scripts to increase leverage and portability. The portability of shell scripts can be far more efficient in the long run than the perceived efficiency of writing a program in a compiled language because they can run on many otherwise incompatible systems. 


# What is a Virtual Private Server?
A VPS is a virtual machine that is hosted by an internet service. It's private, so you can access your own data without others seeing the data. You also have the ability to customize the data. Overall, it give more flexibility than being on shared hosting, but is much more cost-effective than a dedicated server. 

# Why is it considered a bad idea to run programs as the root user on a Linux system?
It defeats the security model that is in place. Any activity should be handled at the user level, and the ROOT should only be used for administrative purposes. When a user is logged in as ROOT, you can do anything and the system won't ask. You don't want to make your entire system vulnerable to bugs or viruses. 