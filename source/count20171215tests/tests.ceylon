import ceylon.test {
    assertEquals,
    parameters,
    test
}

import count20171215 {
    ...
}

{[Integer, String]*} testSingleDigitParameters = {
    [0, ""],
    [1, "one"],
    [2, "two"],
    [3, "three"],
    [4, "four"],
    [5, "five"],
    [6, "six"],
    [7, "seven"],
    [8, "eight"],
    [9, "nine"]
};

test
parameters (`value testSingleDigitParameters`)
shared void testSingleDigit(Integer val, String expected) {
    assertEquals(singleDigit(val), expected);
}

{[Integer, String]*} testDoubleDigitParameters = {
    [10, "ten"],
    [11, "eleven"],
    [12, "twelve"],
    [13, "thirteen"],
    [14, "fourteen"],
    [15, "fifteen"],
    [16, "sixteen"],
    [17, "seventeen"],
    [18, "eighteen"],
    [19, "nineteen"],
    [20, "twenty"],
    [21, "twenty-one"],
    [22, "twenty-two"],
    [30, "thirty"],
    [33, "thirty-three"],
    [40, "forty"],
    [44, "forty-four"],
    [50, "fifty"],
    [55, "fifty-five"],
    [60, "sixty"],
    [66, "sixty-six"],
    [70, "seventy"],
    [77, "seventy-seven"],
    [80, "eighty"],
    [88, "eighty-eight"],
    [90, "ninety"],
    [99, "ninety-nine"]
};

test
parameters (`value testDoubleDigitParameters`)
shared void testDoubleDigit(Integer val, String expected) {
    assertEquals(doubleDigit(val), expected);
}

{[Integer, String]*} testTripleDigitParameters = {
    [100, "one hundred"],
    [101, "one hundred one"],
    [200, "two hundred"],
    [300, "three hundred"],
    [400, "four hundred"],
    [500, "five hundred"],
    [600, "six hundred"],
    [700, "seven hundred"],
    [800, "eight hundred"],
    [900, "nine hundred"],
    [999, "nine hundred ninety-nine"]
};

test
parameters (`value testTripleDigitParameters`)
shared void testTripleDigit(Integer val, String expected) {
    assertEquals(tripleDigit(val), expected);
}

{[String, String?, String]*} testScaleParameters = {
    ["X", null, "X"],
    ["X", "thousand", "X thousand"],
    ["X", "kabillion", "X kabillion"]
};

test
parameters (`value testScaleParameters`)
shared void testScale(String val, String? factor, String expected) {
    assertEquals(scale(val, factor), expected);
}

{[Integer, String]*} testCountParameters = {
    [1, "one"],
    [10, "ten"],
    [100, "one hundred"],
    [1_000, "one thousand"],
    [1_024, "one thousand twenty-four"],
    [123_456, "one hundred twenty-three thousand four hundred fifty-six"],
    [1_000_000, "one million"],
    [1_000_001, "one million one"],
    [12_345_678, "twelve million three hundred forty-five thousand six hundred seventy-eight"],
    [1_000_000_000, "one billion"],
    [1_000_000_001, "one billion one"],
    [1_000_001_001, "one billion one thousand one"],
    [1_234_567_890, "one billion two hundred thirty-four million five hundred sixty-seven thousand eight hundred ninety"],
    [1_111_373_373_372, "one trillion one hundred eleven billion three hundred seventy-three million three hundred seventy-three thousand three hundred seventy-two"]
};

test
parameters (`value testCountParameters`)
shared void testCount(Integer val, String expected) {
    assertEquals(count(val), expected);
}

{[String, String]*} testDecorateParameters = {
    ["one", "One!"],
    ["two", "Two!"],
    ["look at my shoe", "Look at my shoe!"]
};

test
parameters (`value testDecorateParameters`)
shared void testDecorate(String val, String expected) {
    assertEquals(decorate(val), expected);
}

{[Integer, Integer, Integer]*} testMaximumCountParameters = {
    [5, 1, 2],
    [6, 1, 10],
    [7, 1, 12],
    [140, 1_111_373_000_000, 1_111_373_373_372]
    //[280, 7_777_777_777_777_777_777, 0]
};

test
parameters (`value testMaximumCountParameters`)
shared void testMaximumCount(Integer characterLimit, Integer start, Integer expected) {
    assertEquals(maximumCount(characterLimit, start), expected);
}
