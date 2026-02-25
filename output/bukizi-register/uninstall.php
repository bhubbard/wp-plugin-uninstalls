<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bukizi_register_setting');
delete_site_option('bukizi_register_setting');
delete_option('bkz_api_key');
delete_site_option('bkz_api_key');

