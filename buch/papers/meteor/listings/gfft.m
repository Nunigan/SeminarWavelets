figure("Name","GFFT");
SNR = 100;
wind = 2^14;
nlap = 14776;
nfft = 2^14;
[s, f, tsp, psd] = spectrogram(sig,wind,nlap,nfft,Fs,"MinThreshold",-SNR,"yaxis");
imagesc(ts,f,10*log10(psd));
axis xy; 
axis tight; 
view(0,90);
xlabel("Time (secs)");
ylabel("Frequency(HZ)");
ax = gca;
ax.YLim = frrange;
