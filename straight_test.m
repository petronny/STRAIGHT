[x fs] = audioread('vaiueo2d.wav');
soundsc(x,fs);
opts.F0frameUpdateInterval  = 10;   %frame shift(ms)
opts.spectralUpdateInterval = 10;   %frame shift(ms)
opts.F0searchLowerBound     = 50;  %F0 lower bound
opts.F0searchUpperBound     = 900; %F0 upper bound
[f0,ap]=exstraightsource(x,fs,opts);
sp = exstraightspec(x,f0,fs,opts);
sy = exstraightsynth(f0,sp,ap,fs,opts);
soundsc(sy/max(abs(sy)),fs);