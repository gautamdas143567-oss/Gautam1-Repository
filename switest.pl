% Facts
apple(apple1).
apple(apple2).

vegetable(carrot).
vegetable(potato).

% Rule: John likes all apples
likes(john, X) :- apple(X).

% Rule: All vegetables are food
food(X) :- vegetable(X).

% Eating relation
eats(ram, apple1).
eats(sam, carrot).

% Example: what kills whom (none here, so safe food)
% kills(X, Y).  % No facts means nothing kills anyone

% Rule: If someone eats something and it doesn't kill them → it is food
food(Y) :- eats(X, Y), not(kills(Y, X)).