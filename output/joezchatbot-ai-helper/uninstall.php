<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('joezchat_api_key');
delete_site_option('joezchat_api_key');
delete_option('joezchat_kb');
delete_site_option('joezchat_kb');
delete_option('joezchat_temperature');
delete_site_option('joezchat_temperature');

