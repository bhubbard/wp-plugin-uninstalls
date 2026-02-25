<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('animationInterval');
delete_site_option('animationInterval');
delete_option('flakeBottom');
delete_site_option('flakeBottom');
delete_option('flakesMax');
delete_site_option('flakesMax');
delete_option('flakesMaxActive');
delete_site_option('flakesMaxActive');
delete_option('followMouse');
delete_site_option('followMouse');
delete_option('freezeOnBlur');
delete_site_option('freezeOnBlur');
delete_option('snowColor');
delete_site_option('snowColor');
delete_option('snowCharacter');
delete_site_option('snowCharacter');
delete_option('snowStick');
delete_site_option('snowStick');
delete_option('targetElement');
delete_site_option('targetElement');
delete_option('useMeltEffect');
delete_site_option('useMeltEffect');
delete_option('useTwinkleEffect');
delete_site_option('useTwinkleEffect');
delete_option('usePositionFixed');
delete_site_option('usePositionFixed');
delete_option('vMaxX');
delete_site_option('vMaxX');
delete_option('vMaxY');
delete_site_option('vMaxY');

