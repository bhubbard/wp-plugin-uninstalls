<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pryc_wp_antyspam_settings');
delete_site_option('pryc_wp_antyspam_settings');

