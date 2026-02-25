<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chipbot_account_id');
delete_site_option('chipbot_account_id');
delete_option('chipbot_js_snippet');
delete_site_option('chipbot_js_snippet');

