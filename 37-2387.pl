s(sentence(M,N)) --> nounPhrase(M), verbPhrase(N).
s(sentence(M,N)) --> conjunctionPhrase(M), verbPhrase(N).
s(sentence(M,N,O)) --> nounPhrase(M), verbPhrase(N), object(O); conjunctionPhrase(M), verbPhrase(N), object(O).

sss(sentence(M,N,O)) --> nounPhrase(M), verbPhrase(N), object(O); conjunctionPhrase2(M), verbPhrase(N), object(O).

ss(M) --> nounPhrase(M); conjunctionPhrase2(M); conjunctionPhrase(M); sss(M).

nounPhrase(M) --> noun(M) ; adjectivePhrase(M).
nounPhrase(noun_phrase(M,N)) --> determiner(M), noun(N) ; noun(M), prepositionalPhraseC(N) ; noun(M), relativeClauseC(N).
nounPhrase(noun_phrase(M,N,O)) --> determiner(M), noun(N), prepositionalPhraseC(O) ; determiner(M), noun(N), relativeClauseC(O).

verbPhrase(M) --> verb(M) ; adverbPhrase(M).
verbPhrase(conjunction_clause(M,N,O)) --> (verb(M), conjunctionC(N), verbPhrase2(O)); (verb(M), conjunctionC(N), object(O)); (verb(M), conjunctionCC(N), object(O)).
verbPhrase(verb_phrase(M,N)) --> verb(M), prepositionalPhraseC(N).

verbPhrase2(M) --> verb(M) ; adverbPhrase(M).
verbPhrase2(conjunction_clause(M,N,O)) -->  verb(M), conjunctionC(N), verbPhrase2(O).
verbPhrase2(verb_phrase(M,N)) --> verb(M), prepositionalPhraseC(N).
verbPhrase2(verb_phrase(M,N)) --> verb(M), ss(N).

object(conjunction_clause(M,N,O)) --> noun(M), conjunctionC(N), verbPhrase2(O).
object(conjunction_clause(M,N,O)) --> noun(M), conjunctionCC(N), object(O); noun(M), conjunctionC(N), object(O).
object(conjunction_clause(M,N,O,P)) --> determiner(M), noun(N), conjunctionC(O), verbPhrase2(P).
object(conjunction_clause(M,N,O,P)) --> determiner(M), noun(N), conjunctionCC(O), object(P); determiner(M), noun(N), conjunctionC(O), object(P).
object(noun_phrase(M,N)) --> noun(M), verbPhrase2(N).
object(noun_phrase(M,N,O)) --> determiner(M), noun(N), verbPhrase2(O).
object(M) --> nounPhrase(M).

adjectivePhrase(adjective_clause(M,N)) --> adjective(M), noun(N) ; adjective(M), nounPhrase(N).
adjectivePhrase(adjective_clause(M,N,O)) --> determiner(M), adjective(N), noun(O); determiner(M), adjective(N), nounPhrase(O).

adverbPhrase(adverb_clause(M,N)) --> adverb(M), verb(N); verb(M), adverb(N); adverb(M), verbPhrase2(N).
adverbPhrase(adverb_clause(M,N)) --> adverb(M), adjectivePhrase(N).

conjunctionPhrase(conjunction_clause(M,N,O)) --> nounPhrase(M), conjunctionC(N), nounPhrase(O); nounPhrase(M), conjunctionC(N), conjunctionPhrase(O).
conjunctionPhrase2(conjunction_clause(M,N,O)) --> nounPhrase(M), conjunctionC(N), verbPhrase2(O); nounPhrase(M), conjunctionCC(N), nounPhrase(O); nounPhrase(M), conjunctionC(N), nounPhrase(O); nounPhrase(M), conjunctionC(N), conjunctionPhrase2(O); nounPhrase(M), conjunctionCC(N), conjunctionPhrase2(O).

relativeClauseC(relativeClause(M,N)) --> relativePronounC(M), verbPhrase2(N).
relativeClauseC(relativeClause(M,N,O)) --> relativePronounC2(M), pronounC(N), verbPhrase2(O).

prepositionalPhraseC(prepositionalPhrase(M,N)) --> prepostion(M), relativeClauseC(N); prepostion(M), nounPhrase(N).

relativePronounC(relativePronoun(that)) --> [that].
relativePronounC(relativePronoun(who)) --> [who].
relativePronounC(relativePronoun(which)) --> [which].

relativePronounC2(relativePronoun(whom)) --> [whom].

conjunctionC(conjunction(and)) --> [and].
conjunctionC(conjunction(or)) --> [or].
conjunctionC(conjunction(but)) --> [but].

conjunctionCC(conjunction(while)) --> [while].

pronounC(pronoun(I)) --> [I].
pronounC(pronoun(you)) --> [you].
pronounC(pronoun(they)) --> [they].

determiner(d(the)) --> [the].
determiner(d(a)) --> [a].
determiner(d(an)) --> [an].
determiner(d(every)) --> [every].
determiner(d(some)) --> [some].
determiner(d(many)) --> [many].
determiner(d(which)) --> [which].
determiner(d(that)) --> [that].
determiner(d(this)) --> [this].
determiner(d(whose)) --> [whose].

noun(n(boy)) --> [boy].
noun(n(girl)) --> [girl].
noun(n(man)) --> [man].
noun(n(woman)) --> [woman].
noun(n(box)) --> [box].
noun(n(room)) --> [room].
noun(n(school)) --> [school].
noun(n(envelope)) --> [envelope].
noun(n(shed)) --> [shed].
noun(n(building)) --> [building].
noun(n(tree)) --> [tree].
noun(n(students)) --> [students].
noun(n(professors)) --> [professors].
noun(n(lecturers)) --> [lecturers].
noun(n(scientists)) --> [scientists].
noun(n(researchers)) --> [researchers].
noun(n(student)) --> [student].
noun(n(dog)) --> [dog].
noun(n(cat)) --> [cat].
noun(n(book)) --> [book].
noun(n(house)) --> [house].

verb(v(worked)) --> [worked].
verb(v(pushed)) --> [pushed].
verb(v(stored)) --> [stored].
verb(v(gave)) --> [gave].
verb(v(liked)) --> [liked].
verb(v(watched)) --> [watched].
verb(v(climbed)) --> [climbed].
verb(v(admired)) --> [admired].
verb(v(appreciated)) --> [appreciated].
verb(v(is)) --> [is].
verb(v(was)) --> [was].
verb(v(ate)) --> [ate].
verb(v(slept)) --> [slept].
verb(v(danced)) --> [danced].
verb(v(walked)) --> [walked].
verb(v(ran)) --> [ran].
verb(v(played)) --> [played].
verb(v(cried)) --> [cried].
verb(v(laughed)) --> [laughed].
verb(v(jumped)) --> [jumped].
verb(v(fell)) --> [fell].

adjective(ad(young)) --> [young].
adjective(ad(old)) --> [old].
adjective(ad(big)) --> [big].
adjective(ad(small)) --> [small].
adjective(ad(large)) --> [large].
adjective(ad(empty)) --> [empty].
adjective(ad(poor)) --> [poor].
adjective(ad(rich)) --> [rich].
adjective(ad(white)) --> [white].
adjective(ad(black)) --> [black].
adjective(ad(brilliant)) --> [brilliant].
adjective(ad(talented)) --> [talented].
adjective(ad(bright)) --> [bright].
adjective(ad(smart)) --> [smart].
adjective(ad(lazy)) --> [lazy].
adjective(ad(humble)) --> [humble].
adjective(ad(red)) --> [red].
adjective(ad(blue)) --> [blue].
adjective(ad(tiny)) --> [tiny].
adjective(ad(dirty)) --> [dirty].
adjective(ad(chases)) --> [chases].

adverb(av(quickly)) --> [quickly].
adverb(av(secretly)) --> [secretly].
adverb(av(slowly)) --> [slowly].
adverb(av(usually)) --> [usually].
adverb(av(occasionally)) --> [occasionally].
adverb(av(yesterday)) --> [yesterday].
adverb(av(cheerfully)) --> [cheerfully].
adverb(av(quietly)) --> [quietly].
adverb(av(very)) --> [very].
adverb(av(enough)) --> [enough].
adverb(av(entirely)) --> [entirely].

prepostion(p(for)) --> [for].
prepostion(p(behind)) --> [behind].
prepostion(p(in)) --> [in].
prepostion(p(at)) --> [at].
prepostion(p(on)) --> [on].
prepostion(p(by)) --> [by].
prepostion(p(after)) --> [after].
prepostion(p(into)) --> [into].
prepostion(p(since)) --> [since].
prepostion(p(to)) --> [to].
prepostion(p(until)) --> [until].