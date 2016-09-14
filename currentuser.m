function user = currentuser

% function user = currentuser
%
%  define the current user path
%
% KIM 02.12

% define the user
[~, user_name] = unix( 'whoami');
user = ['/Users/', user_name(1:end-1), '/']; 
