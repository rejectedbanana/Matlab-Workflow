function prpath = newworksheet( project )

% function prpath = newworksheet( project )
%
% For the project specified above, open and make a new worksheet in the 'Working' folder and a
% corresponding folder in the 'Graphics' folder.  The printer path to the
% new graphics folder is also output.
% 
% help myprojects to see the list of current projects
%
%  KIM 02.2012

% define the user
user = currentuser; 

% find the abbreviation for the project
ab = myprojects( project ); 

% point to the right folder
localfolder = worksheetfolder; 
basepath = fullfile( user, worksheetfolder, project); 

% make a date string
dstr =  datestr( now, 'yymmdd' ); 

% define the path
pathstr = fullfile( basepath, 'Working', [ab, dstr, '.m']); 

% if a worksheet for today on the project doesn't exist, create it
if ~exist( pathstr, 'file')
    
    % define the path for the graphics
    prpath = fullfile( basepath, 'Graphics', [ab, dstr]);
    
    % make the graphics directory
    makedir = ['mkdir  ', prpath ];
    unix(makedir);
    
    % make a new file
    fid = fopen(pathstr, 'w');
    fprintf(fid, [ '%%  \r']);
    fprintf(fid, [ 'prpath = ''', prpath, ''';\r']);
    fprintf(fid, ['flag = ''-r150 -opengl'';\r']);
    fclose(fid);
    
    % open the file
    eval( ['edit ', pathstr])
     
else % if it does exist, open it
    disp( [ pathstr, ' exists....'])
    disp( [' '])
    prpath = fullfile( basepath, 'Graphics', [ab, dstr]);
    % open the file
    eval( ['edit ', pathstr])
end

disp( [ 'prpath = ''', prpath, ''';'])
disp( ['flag = ''-r300 -painters'';'])





