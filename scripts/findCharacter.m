function found=findCharacter()
text=imread('../images/text.png');
text=im2double(text(:,:,1));%take one from rgb
copy=text;                  %and copy one for final show
char=imread('../images/A.png');%can be changed to B or C
char=im2double(char(:,:,1));%take one from rgb
[textHeight,textWidth]=size(text);
[charHeight,charWidth]=size(char);
corr(textHeight,textWidth)=0;
norCorr=corr;
found=0;
i=1;
while i<=textHeight-charHeight
    j=1;
    while j<=textWidth-charWidth
        corr(i,j)=sum(sum(text(i:i+charHeight-1,j:j+charWidth-1).*char));
        norCorr(i,j)=corr(i,j)/sqrt(sum(sum(text(i:i+charHeight-1,j:j+charWidth-1).^2))*sum(sum(char.^2)));
        if norCorr(i,j)>.98% percentage accuracy
            found=found+1;
            text(i,j:j+charWidth)=0;
            text(i:i+charHeight,j)=0;
            text(i+charHeight,j:j+charWidth)=0;
            text(i:i+charHeight,j+charWidth)=0;
            j=j+charWidth;
        end
        j=j+1;
    end
    i=i+1;
end
text(:,:,3)=text(:,:,1);
text(:,:,2)=text(:,:,1);
text(:,:,1)=copy;
imshow(text);
end