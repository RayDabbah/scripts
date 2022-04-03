#! /usr/bin/php


# generate a regex to search from camel to snake and visa versa

<?php

$string = $argv[1];

$rep = preg_replace_callback(
    '/([A-Z]|_[a-z])/',
    function ($matches) {
        $letter = str_replace('_', '', $matches[0]);
        return '(_' . strtolower($letter) . '|' . strtoupper($letter) . ')';
    },
    $string,
);

echo "$rep\n";

