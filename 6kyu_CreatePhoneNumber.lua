--Description:
--Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.

char *create_phone_number(char phnum[15], const unsigned char nums[10])
{

  phnum = snprintf(phnum,15,"(%d%d%d) %d%d%d-%d%d%d%d",
    nums[0],nums[1],nums[2],nums[3],nums[4],nums[5],nums[6],nums[7],nums[8],nums[9]);

    return phnum;
}