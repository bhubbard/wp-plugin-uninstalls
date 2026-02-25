<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bg_shce_effectsEnabled');
delete_site_option('bg_shce_effectsEnabled');
delete_option('bg_shce_animationEffect');
delete_site_option('bg_shce_animationEffect');
delete_option('bg_shce_animationSpeed');
delete_site_option('bg_shce_animationSpeed');
delete_option('bg_shce_stickToBottom');
delete_site_option('bg_shce_stickToBottom');
delete_option('bg_shce_preset1');
delete_site_option('bg_shce_preset1');

