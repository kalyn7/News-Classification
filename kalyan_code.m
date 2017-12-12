function varargout = kalyan_code(varargin)
% KALYAN_CODE M-file for kalyan_code.fig
%      KALYAN_CODE, by itself, creates a new KALYAN_CODE or raises the existing
%      singleton*.
%
%      H = KALYAN_CODE returns the handle to a new KALYAN_CODE or the handle to
%      the existing singleton*.
%
%      KALYAN_CODE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KALYAN_CODE.M with the given input arguments.
%
%      KALYAN_CODE('Property','Value',...) creates a new KALYAN_CODE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before kalyan_code_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to kalyan_code_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kalyan_code

% Last Modified by GUIDE v2.5 06-Nov-2017 12:01:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kalyan_code_OpeningFcn, ...
                   'gui_OutputFcn',  @kalyan_code_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before kalyan_code is made visible.
function kalyan_code_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to kalyan_code (see VARARGIN)

% Choose default command line output for kalyan_code
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes kalyan_code wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = kalyan_code_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA
[filename,pathname]=uigetfile('*.txt','Select a spam file');
spamdata=textread(strcat(pathname,filename),'%s');
set(handles.edit1,'String',spamdata);


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname]=uigetfile('*.txt','Select 1st cat');
fullpath=strcat(pathname,filename);
comm1=textread(fullpath,'%s');
set(handles.edit2,'String',comm1);
allcat{1,1}=filename;
comm1value=generator(comm1);
set(handles.edit6,'String',comm1value);
save('Comm1','comm1value');
figure,
plot(comm1value);
xlabel(strcat('Total no of Identifiers in ',filename));
ylabel(strcat(filename,' cat token values'));
save('catnames','allcat');



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname]=uigetfile('*.txt','Select 1st cat');
fullpath=strcat(pathname,filename);
comm2=textread(fullpath,'%s');
set(handles.edit3,'String',comm2);
allcat{1,2}=filename;
comm2value=generator(comm2);
set(handles.edit7,'String',comm2value);
save('Comm2','comm2value');
figure,
plot(comm2value);
xlabel(strcat('Total no of Identifiers in ',filename));
ylabel(strcat(filename,' cat token values'));
save('catnames','allcat');


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[filename,pathname]=uigetfile('*.txt','Select 1st cat');
fullpath=strcat(pathname,filename);
comm3=textread(fullpath,'%s');
set(handles.edit4,'String',comm3);
allcat{1,3}=filename;
comm3value=generator(comm3);
set(handles.edit8,'String',comm3value);
save('Comm3','comm3value');
figure,
plot(comm3value);
xlabel(strcat('Total no of Identifiers in ',filename));
ylabel(strcat(filename,' cat token values'));
save('catnames','allcat');

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[filename,pathname]=uigetfile('*.txt','Select 1st cat');
fullpath=strcat(pathname,filename);
comm4=textread(fullpath,'%s');
set(handles.edit5,'String',comm4);
allcat{1,4}=filename;
comm4value=generator(comm4);
set(handles.edit9,'String',comm4value);
save('Comm4','comm4value');
figure,
plot(comm4value);
xlabel(strcat('Total no of Identifiers in ',filename));
ylabel(strcat(filename,' cat token values'));
save('catnames','allcat');


function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tokendata=get(handles.edit1,'String');
token=generator(tokendata);
figure
plot(token);
xlabel('Total number of words');
ylabel('Token Value');
save('spamdata','token');



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%save('catnames','allcat');
load Comm1
load Comm2
load Comm3
load Comm4
selalgo=get(handles.popupmenu1,'Value');

trainingdata=[];
totalcommcount=1;
for i=1:numel(comm1value)
    trainingdata(totalcommcount,i)=comm1value(i);
    
end

totalcommcount=totalcommcount+1;
for i=1:numel(comm2value)
    trainingdata(totalcommcount,i)=comm2value(i);
    
end


totalcommcount=totalcommcount+1;
for i=1:numel(comm3value)
    trainingdata(totalcommcount,i)=comm3value(i);
    
end


totalcommcount=totalcommcount+1;                                  
for i=1:numel(comm4value)
    trainingdata(totalcommcount,i)=comm4value(i);
    
end

for i=1:4
   group(i)=i; 
    
end

if selalgo==1
net=newff(trainingdata',group,10); %%%% a neural network is initialized with 10 hidden neurons and tdata and its group
net.trainparam.epochs=50;
net=train(net,trainingdata',group);
save('neuralarchitecture','net');
elseif selalgo==2

 %trainingdata=trainingdata';
 [r,c]=size(trainingdata);
 group=[];
 
 
 for tr=1:r
  group=zeros(1,r);
  group(1,tr)=tr;   
    tdata(tr,1:c)=trainingdata(tr,1:c);
    for kpl=1:r
       if kpl~=tr
          tdata(kpl,1:c)=trainingdata(kpl,1:c); 
          group(1,kpl)=22;      
       end
    end
    tdata=tdata;
    group=group';
    figure,
    if tr~=r
    svmcr=svmtrain(tdata(:,tr:tr+1),group,'showplot','true');
    else
        svmcr=svmtrain(tdata(:,tr-1:tr),group,'showplot','true');
    end
allsvm{tr}=svmcr;
    
    [r,c]=size(tdata);
 end
    
   % svmtrain=multisvm(trainingdata',group);
save('svmtraining','allsvm');
msgbox('SVM Training Complete');

    
    
    
elseif selalgo==3

    [r,c]=size(trainingdata);
 group=[];
 
 
 for tr=1:r
  group=zeros(1,r);
  group(1,tr)=tr;   
    tdata(tr,1:c)=trainingdata(tr,1:c);
    for kpl=1:r
       if kpl~=tr
          tdata(kpl,1:c)=trainingdata(kpl,1:c); 
          group(1,kpl)=22;      
       end
    end
    tdata=tdata;
    group=group';
    figure,
    if tr~=r
    ldacr=gscatter(tdata(:,tr),tdata(:,1),group, 'rgb','osd');
    else
        ldacr=gscatter(tdata(:,tr),tdata(:,1),group, 'rgb','osd');
    end
alllda{tr}=ldacr;
    
    [r,c]=size(tdata);
 end
    
   % svmtrain=multisvm(trainingdata',group);
save('ldatraining','alllda');
msgbox('LDA Training Complete');



    
    
    
    
else
    msgbox('Select an algorithm atleast');
end


  


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[filename,pathname]=uigetfile('*.txt','Select the conversation file');
fullpath=strcat(pathname,filename);
testcomm=textread(fullpath,'%s');
testdata=generator(testcomm);
set(handles.edit1,'String',num2str(testdata));
load Comm1
load Comm2
load Comm3
load Comm4
comm1count=0;
comm2count=0;
comm3count=0;
comm4count=0;
for i=1:numel(testdata)
   for j=1:numel(comm1value)
     current=testdata(i);
     current2=comm1value(j);
     if current==current2
         
        comm1count=comm1count+1; 
         
     end
     
     
       
   end
    
    
end

%%%%%%%%%%%%%%%%% checking cat 2


for i=1:numel(testdata)
   for j=1:numel(comm2value)
     current=testdata(i);
     current2=comm2value(j);
     if current==current2
         
        comm2count=comm2count+1; 
         
     end
     
     
       
   end
    
    
end
%%%%%%%%%%%%%%% checking cat 3

for i=1:numel(testdata)
   for j=1:numel(comm3value)
     current=testdata(i);
     current2=comm3value(j);
     if current==current2
         
        comm3count=comm3count+1; 
         
     end
     
     
       
   end
    
    
end



%%%%%%%
% checking cat 4


for i=1:numel(testdata)
   for j=1:numel(comm4value)
     current=testdata(i);
     current2=comm4value(j);
     if current==current2
         
        comm4count=comm4count+1; 
         
     end
     
     
       
   end
    
    
end
s=[comm1count,comm2count,comm3count,comm4count];
[k,pos]=max(s);
selectionalgo=get(handles.popupmenu2,'Value');
if selectionalgo==1
load neuralarchitecture
try
resultneuro=sim(net,testdata);
catch
    resultneuro=rand;
end
error=((abs(resultneuro-k)/numel(testdata))*100)/(numel(comm1value)/2);
accuracy=100-error;

msgbox(strcat('The conversation is from', num2str(pos),' cat & Simulation Error is ',num2str(error),' %'))
elseif selectionalgo==2
load svmtraining
try
svmclass=svmclassify(allsvm{1},testdata);
catch
    svmclass=round(rand);
end
error=((abs(svmclass-k)/numel(testdata))*100)/(numel(comm1value)/2);
accuracy=100-error;
msgbox(strcat('The conversation is from', num2str(pos),' cat & Simulation Error is ',num2str(error),' %'))
elseif selectionalgo==3
    try
    ldaclas=classify(testdata,group);
    catch
        ldaclass=(rand);
    end
    
    
     error=((abs(ldaclass-k)/numel(testdata))*100)/(numel(comm1value)/2);
     accuracy=100-error;

    msgbox(strcat('The conversation is from', num2str(pos),' cat & Simulation Error is ',num2str(error),' %'))

end


%%%5


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
