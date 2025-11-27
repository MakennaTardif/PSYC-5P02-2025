% Lesson 9 - in class exercises
%% 9.1 - making if statements
% Let's start by shuffling the rng
rng('shuffle');

a = rand();
myVar = 1==1;

if a < 0.3  %if the value a is less than .33 (if it returns true)
    b = a.^2;  %square
elseif a >= 0.33 & a <= .66    
    another = true;
    b = 0;
else % if everything returned false
    b = a.^.5; %squareroot
end; %the end of my first if statment 

%% 9.2 - Switch/case

k = randi(6); % make a variable

switch k %start of switch
    case {1,2}
        VWMCapacity = 'low';
    case {3,4}
        VWMCapacity = 'med';
    otherwise
        VWMCapacity = 'high';  
    
end % end of switch

%% 9.3 - For Loops


var = 11:21 % create a vector

for i = 1:length(var) %loop through elements of that vector
    
    i
    var(i)
    a = var(i)^2
    
end % loop

%% 9.4 comparing indexing to loops

tic % start clock
a = zeros(1,10); % pre-allocating a variable
toc %end clock

b = [];
tic
for i = 1:10
    b(i) = i^2; %adding elements to b
end
toc

tic
for i = 1:10
    a(i) = i^2; %inserting elements into pre-allocated a
end
toc

%% 9.5 Embedding while loops

numLoops = 0;
a = 0;        %give it a start value
numLoops2 = 0;
numLoops3 = 0;
while a < .9    %make it meat some condition
numLoops = numLoops + 1;
a = rand();  %reset value of a
if a < .5
numLoops2 = numLoops2 + 1;
if a < .1
continue;
numLoops3 = numLoops3 + 1;     
end %who do these belong to?
end
if a == .7    %here's an if statement that will break out of the loop
break;
end % who do these belong to??
end

%% 9. 6 -  indexing

x = round(10 + randn(100,1));  %random normal numbers centered on 10

(x==10)
x(x==10)
find(x==10)

%any and all

any(x==10)

all(x==10)

%% 9.7 - Functions

function myfcn(arg1,arg2,arg3)
if nargin < 3
    arg3 = some_value;
end;
if nargin < 2
    arg2 = some_other_value;
end;
end;

%% 9.8 - text

%comparing strings:
'apples' == 'oranges'
strcmp('apples', 'oranges')

%can ignore case with strcmpi

%string find:

strfind('where in the world is carmen sandiego', 'carmen sandiego')

%string replace:

strrep('a a a a ', ' ', [])


% writing to a file:

fid = fopen('myFile.txt', 'wt');
rr = 1.1:5.1;

fprintf(fid,'%3.2f\t',rr);
fprintf(fid,'\n');
fprintf(fid,'%3.2f\t',rr + 2);

fclose(fid);

%% 9.9 - eval


numArrays = 10; 
A = cell(numArrays,1);
for n = 1:numArrays 
	A{n} = magic(n); 
    Eval(['A', int2str(n), ' = magic(n)']);
End

A{5}


Eval(['A', int2str(n), ' = magic(n)']);

%% structures and cells