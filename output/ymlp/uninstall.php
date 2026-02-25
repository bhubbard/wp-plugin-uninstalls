<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gf_ymlp_version');
delete_site_option('gf_ymlp_version');
delete_option('gf_ymlp_settings');
delete_site_option('gf_ymlp_settings');
delete_option('recently_activated');
delete_site_option('recently_activated');

