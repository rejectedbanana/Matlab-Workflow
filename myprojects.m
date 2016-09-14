function ab = myprojects( project )

% function ab = myprojects( project )
%
%  A list of my projects, with the appropriate abbreviations that I have
%  predefined
%
% Current projects:  icortas, ORE05, southchinaseas, wavesuperposition,
% acrobat, chukchi2012, arcticbuoys, chukchiiws, outreach, seward13,
% chukchi13, wbwaves, saildrone, ecofoci, beringcanyon
%
% KIM 02.12

% find the project and define the abbreviation
if strcmp( lower(project), 'icortas')
    ab = 'IC';
elseif strcmp( upper(project), 'ORE05')
    ab = 'OR';
elseif strcmp( lower(project), 'southchinaseas')
    ab = 'SCS';
elseif strcmp( lower(project), 'wavesuperposition')
    ab = 'WSP';
elseif strcmp( lower(project), 'acrobat')
    ab = 'AC';    
elseif strcmp( lower(project), 'chukchi2012')
    ab = 'CS12';
elseif strcmp( lower(project), 'arcticbuoys')
    ab = 'ABY';
elseif strcmp( lower(project), 'chukchiiws')
    ab = 'CSIW';
elseif strcmp( lower(project), 'outreach')
    ab = 'OTR';
elseif strcmp( lower(project), 'seward13')
    ab = 'S13';
elseif strcmp( lower(project), 'chukchi13')
    ab = 'CS13';
elseif strcmp( lower(project), 'wbwaves')
    ab = 'WBW';
elseif strcmp( lower(project), 'saildrone')
    ab = 'SD';
elseif strcmp( lower(project), 'ecofoci')
    ab = 'EF';
elseif strcmp( lower(project), 'beringcanyon')
    ab = 'BCAN';
elseif strcmp( lower(project), 'dy1606')
    ab = 'DY1606_';
else
    error( 'matching project not found')
    return
end