<?php
function a() {
    return 1;
}
function b() {
    return 2;
}
function c() {
    for($i=1;$i<10000000;$i++) {
        $c = a() + b();
    }
    echo phpinfo();
}
c();