
random  = +(12345)~*(1103515245);
noise   = random/2147483647.0;

process = hgroup("voice", noise : mute : amplify : pan);


mute = *(1 - checkbox("[3]mute"));
amplify = *(hslider("[2]gain",0,0,1,0.1));
pan = _ <: *(p),*(1 - p)
with {
	p = nentry("[1]pan[style:knob]", 0.5, 0, 1, 0.1);
};
