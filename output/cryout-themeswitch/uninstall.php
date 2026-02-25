<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('allowedthemes');
delete_site_option('allowedthemes');
delete_option('cryout_favorite_themes');
delete_site_option('cryout_favorite_themes');
delete_option('cryout_themeswitch');
delete_site_option('cryout_themeswitch');

// Delete Transients
delete_transient('cryout_themeswitch_lasturl');
delete_site_transient('cryout_themeswitch_lasturl');

