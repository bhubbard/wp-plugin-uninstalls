<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pla_animation_choose');
delete_site_option('pla_animation_choose');
delete_option('pla_animation_upload');
delete_site_option('pla_animation_upload');
delete_option('pla_animation_bg_color');
delete_site_option('pla_animation_bg_color');

