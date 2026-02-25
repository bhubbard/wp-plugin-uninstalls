<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rgisunarc_settings_sunarc');
delete_site_option('rgisunarc_settings_sunarc');

