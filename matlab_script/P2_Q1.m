gsn=[1 -1 2];
gsd=[1 2 1];
for k=1:1:5;
    gsn=[k -k 2*k];
    [num,den]=blk_read(gsn,[0,0,1],gsd,[0,0,1],'nfeedb');
    figure (1);
    subplot(5,1,k)
    pzmap(num,den)
    figure (2);
    subplot(5,1,k)
    step(num,den)
end

gsn1=[0 0 0 1];
gsd1=[1 2 4 0];
for k=1:1:8;
    gsn1=[0 0 0 k];
    [num1,den1]=blk_read(gsn1,[0,0,0,1],gsd1,[0,0,0,1],'nfeedb');
    figure (3);
    subplot(8,1,k)
    pzmap(num1,den1)
    figure (4);
    subplot(8,1,k)
    step(num1,den1)
end






