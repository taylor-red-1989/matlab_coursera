function [valid] = valid_date(year,month,day)
    if ~isscalar(month) || month < 1 || month>12 || month ~= fix(month)
            valid = false;
            return
    else
             if ~isscalar(day) || day < 1 || day ~= fix(day)
                 valid = false;
                 return
             else
                    if ~isscalar(year) || year < 1 || year ~= fix(year)
                    valid = false;
                    return
                    end
             end
    end
    if month==2
        if (mod(year,100)==0) && (mod(year,400)==0)
            if day<=29
                valid=true;
            else 
                valid=false;
            end
        elseif (mod(year,100)~=0) && (mod(year,4)==0)
                if day<=29
                    valid=true;
                else 
                    valid=false;
                end
        else
            if day<=28
                valid=true;
            else
                valid=false;
            end
        end 
    end
    if (month==1) || (month==3) || (month==5) || (month==7) || (month==8) || (month==10) || (month==12)
        if day<=31
            valid=true;
        else
            valid=false;
        end
    end
    if (month==4) || (month==6) || (month==9) || (month==11) 
        if day<=30
            valid=true;
        else
            valid=false;
        end
end