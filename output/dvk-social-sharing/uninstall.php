<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dvkss_code_version');
delete_site_option('dvkss_code_version');
delete_option('dvk_social_sharing');
delete_site_option('dvk_social_sharing');

