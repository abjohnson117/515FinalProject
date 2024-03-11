
n = 100;
images    = cell(n,1);
gifFile = '.gif';
for i = 1:100
    if i<10
        images{i} = imread(['00',num2str(i),'.png']);
    elseif i<100
        images{i} = imread(['0',num2str(i),'.png']);
    else
        images{i} = imread([num2str(i),'.png']);
    end
end


FileName = 'UnicornAnimation.gif';

for k = 1:numel(images)

    if k ==1

%// For 1st image, start the 'LoopCount'.
        imwrite(rgb2gray(images{k}),gifFile,'gif','LoopCount',Inf,'DelayTime',.1);
    else
        imwrite(rgb2gray(images{k}),gifFile,'gif','WriteMode','append','DelayTime',.1);
    end

end


% writerObj = VideoWriter('myVideo.gif');
%  writerObj.FrameRate = 5;
%  % set the seconds per image
%  secsPerImage = ones(n) ;
%  % open the video writer
 % open(writerObj);
 % % write the frames to the video
 % for u=1:n
 %     % convert the image to a frame
 %     frame = im2frame(images{u});
 %     for v=1:secsPerImage(u) 
 %         writeVideo(writerObj, frame);
 %     end
 % end
 % % close the writer object
 % close(writerObj);