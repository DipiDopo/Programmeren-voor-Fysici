t0 = 0;
tmax = 1000000;

Q = sqrt(t0):1:sqrt(tmax);
t = Q.^2;

Pt = 1-exp( (12.*sqrt(t./tmax) + 3.*log(tmax) - (log(t./tmax)).^2 - 8.*dilog(sqrt(t./tmax)) )./120);
plot(Q, Pt);
xlabel('Q');
ylabel('p(Q)');
ylim([0 1])