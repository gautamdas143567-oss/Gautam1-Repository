% Facts
apple(apple1).
apple(apple2).

vegetable(carrot).
vegetable(potato).

% Rule: John likes all apples
likes(john, X) :- apple(X).

% Rule: All vegetables are food
food(X) :- vegetable(X).

% Rule: If someone eats something and it doesn't kill them → it is food
food(Y) :- eats(X, Y), \+ killed(Y, X).

% Example facts
eats(john, apple1).
eats(john, carrot).

% Assume these do not kill John
killed(poison, john).   % only poison kills John



