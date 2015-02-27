random =  _ + (12345) ~ *(1103515245);
noise = random/2147483647.0;

process = noise * hslider("Noise", 0, 0, 1, 0.1);