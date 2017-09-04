function af=evaluate(af,v)
af_follow=follow(af,v);
af_swarm=swarm(af,v);
af_prey=prey(af,v);
af_communication=communication(af);
af_best=af_follow;
if foodconsistence(af_swarm)<foodconsistence(af_best)
    af_best=af_swarm;
end
if foodconsistence(af_prey)<foodconsistence(af_best)
    af_best=af_prey;
end
if foodconsistence(af_communication)<foodconsistence(af_best)
    af_best=af_communication;
end
if foodconsistence(af_best)<foodconsistence(af)
    af=af_best;
end
