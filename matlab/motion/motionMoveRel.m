function motionMoveRel(s, delta)
    url = strcat(s.ControllerURL, "/axis/", s.Axis, "/pos?relative=true");
    opts = weboptions('MediaType', 'application/json', 'timeout', Inf);
    payload = struct();
    payload.f64 = delta;
    webwrite(url, payload, opts);
end
