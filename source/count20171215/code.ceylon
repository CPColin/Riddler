suppressWarnings ("expressionTypeNothing")
shared String singleDigit(Integer val) {
    assert (0 <= val < 10);
    
    return switch (val)
        case (0) ""
        case (1) "one"
        case (2) "two"
        case (3) "three"
        case (4) "four"
        case (5) "five"
        case (6) "six"
        case (7) "seven"
        case (8) "eight"
        case (9) "nine"
        else nothing;
}

suppressWarnings ("expressionTypeNothing")
shared String doubleDigit(Integer val) {
    if (val < 10) {
        return singleDigit(val);
    }
    
    assert (10 <= val < 100);
    
    if (val < 20) {
        return switch (val)
            case (10) "ten"
            case (11) "eleven"
            case (12) "twelve"
            case (13) "thirteen"
            case (14) "fourteen"
            case (15) "fifteen"
            case (16) "sixteen"
            case (17) "seventeen"
            case (18) "eighteen"
            case (19) "nineteen"
            else nothing;
    }
    
    value tens = switch (val / 10)
        case (2) "twenty"
        case (3) "thirty"
        case (4) "forty"
        case (5) "fifty"
        case (6) "sixty"
        case (7) "seventy"
        case (8) "eighty"
        case (9) "ninety"
        else nothing;
    value ones = val % 10;
    
    return ones == 0 then tens else "``tens``-``singleDigit(ones)``";
}

shared String tripleDigit(Integer val) {
    if (val < 100) {
        return doubleDigit(val);
    }
    
    assert (100 <= val < 1000);
    
    value hundreds = singleDigit(val / 100);
    value remainder = val % 100;
    
    return remainder == 0
            then "``hundreds`` hundred"
            else "``hundreds`` hundred ``doubleDigit(remainder)``";
}

shared String scale(String val, String? factor) {
    return if (exists factor) then "``val`` ``factor``" else val;
}

shared String count(variable Integer val) {
    value factors = {
        "thousand",
        "million",
        "billion",
        "trillion",
        "quadrillion",
        "quintillion",
        "sextillion",
        "septillion"
    }.iterator();
    
    value count = StringBuilder();
    variable String? factor = null;
    
    while (val > 0) {
        value remainder = val % 1000;
        value part = tripleDigit(remainder);
        
        if (!part.empty) {
            if (!count.empty) {
                count.prepend(" ");
            }
            
            count.prepend(scale(part, factor));
        }
        
        val /= 1000;
        
        assert (is String nextFactor = factors.next());
        
        factor = nextFactor;
    }
    
    return count.string;
}

shared String decorate(String val) {
    assert (exists first = val.first);
    
    return "``first.uppercased````val.rest``!";
}

shared Integer maximumCount(Integer characterLimit, Integer start = 1) {
    variable value longest = 0;
    
    for (val in start..runtime.maxIntegerValue) {
        value counted = count(val);
        value decorated = decorate(counted);
        value length = decorated.size;
        
        if (length > characterLimit) {
            return val - 1;
        }
        
        if (length > longest) {
            print("``decorated`` ``length``");
            longest = length;
        }
    }
    
    return -1;
}
