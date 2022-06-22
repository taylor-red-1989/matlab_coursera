function charnum=char_counter(fname,ch)
    fid=fopen(fname,'rt');
    temp=0;
    if fid<0
        charnum=-1;
        return
    end
    if fid>0 && ischar(ch)
        oneline=fgets(fid);
        while ischar(oneline) 
            temp=temp+count(oneline,ch);
            oneline=fgets(fid);
            end         
        charnum=temp;
    else
        charnum=-1;
    end
    fclose(fid);
end