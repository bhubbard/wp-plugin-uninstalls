<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ivoox_setting_color');
delete_site_option('ivoox_setting_color');
delete_option('tecnologeria_podcasting_version');
delete_site_option('tecnologeria_podcasting_version');

