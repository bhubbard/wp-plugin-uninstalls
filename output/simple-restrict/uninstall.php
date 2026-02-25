<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_restrict_setting_one');
delete_site_option('simple_restrict_setting_one');
delete_option('simple_restrict_setting_redirect');
delete_site_option('simple_restrict_setting_redirect');

