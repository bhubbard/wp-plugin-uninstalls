<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('profile_gender');
delete_site_option('profile_gender');
delete_option('css_settings');
delete_site_option('css_settings');

