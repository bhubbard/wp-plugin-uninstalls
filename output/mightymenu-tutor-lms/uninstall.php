<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tutor_magin_menu_style_options');
delete_site_option('tutor_magin_menu_style_options');

