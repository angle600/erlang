%% Based on canonical data version 1.4.0-1
%% https://github.com/exercism/problem-specifications/raw/master/exercises/anagram/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(anagram_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_no_matches_test_'() ->
    {"no matches",
     ?_assertMatch([],
		   lists:sort(anagram:find_anagrams("diaper",
						    ["hello", "world",
						     "zombies", "pants"])))}.

'2_detects_two_anagrams_test_'() ->
    {"detects two anagrams",
     ?_assertMatch(["maters", "stream"],
		   lists:sort(anagram:find_anagrams("master",
						    ["stream", "pigeon",
						     "maters"])))}.

'3_does_not_detect_anagram_subsets_test_'() ->
    {"does not detect anagram subsets",
     ?_assertMatch([],
		   lists:sort(anagram:find_anagrams("good",
						    ["dog", "goody"])))}.

'4_detects_anagram_test_'() ->
    {"detects anagram",
     ?_assertMatch(["inlets"],
		   lists:sort(anagram:find_anagrams("listen",
						    ["enlists", "google",
						     "inlets", "banana"])))}.

'5_detects_three_anagrams_test_'() ->
    {"detects three anagrams",
     ?_assertMatch(["gallery", "largely", "regally"],
		   lists:sort(anagram:find_anagrams("allergy",
						    ["gallery", "ballerina",
						     "regally", "clergy",
						     "largely", "leading"])))}.

'6_does_not_detect_non_anagrams_with_identical_checksum_test_'() ->
    {"does not detect non-anagrams with identical "
     "checksum",
     ?_assertMatch([],
		   lists:sort(anagram:find_anagrams("mass", ["last"])))}.

'7_detects_anagrams_case_insensitively_test_'() ->
    {"detects anagrams case-insensitively",
     ?_assertMatch(["Carthorse"],
		   lists:sort(anagram:find_anagrams("Orchestra",
						    ["cashregister",
						     "Carthorse",
						     "radishes"])))}.

'8_detects_anagrams_using_case_insensitive_subject_test_'() ->
    {"detects anagrams using case-insensitive "
     "subject",
     ?_assertMatch(["carthorse"],
		   lists:sort(anagram:find_anagrams("Orchestra",
						    ["cashregister",
						     "carthorse",
						     "radishes"])))}.

'9_detects_anagrams_using_case_insensitive_possible_matches_test_'() ->
    {"detects anagrams using case-insensitive "
     "possible matches",
     ?_assertMatch(["Carthorse"],
		   lists:sort(anagram:find_anagrams("orchestra",
						    ["cashregister",
						     "Carthorse",
						     "radishes"])))}.

'10_does_not_detect_a_anagram_if_the_original_word_is_repeated_test_'() ->
    {"does not detect a anagram if the original "
     "word is repeated",
     ?_assertMatch([],
		   lists:sort(anagram:find_anagrams("go", ["go Go GO"])))}.

'11_anagrams_must_use_all_letters_exactly_once_test_'() ->
    {"anagrams must use all letters exactly "
     "once",
     ?_assertMatch([],
		   lists:sort(anagram:find_anagrams("tapper",
						    ["patter"])))}.

'12_words_are_not_anagrams_of_themselves_case_insensitive_test_'() ->
    {"words are not anagrams of themselves "
     "(case-insensitive)",
     ?_assertMatch([],
		   lists:sort(anagram:find_anagrams("BANANA",
						    ["BANANA", "Banana",
						     "banana"])))}.
