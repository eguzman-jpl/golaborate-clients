function motionMoveAbs(s, pos)
    url = strcat(s.ControllerURL, "/axis/", s.Axis, "/pos");
    opts = weboptions('MediaType', 'application/json', 'timeout', Inf);
    payload = struct();
    payload.f64 = pos;
    webwrite(url, payload, opts);
end
