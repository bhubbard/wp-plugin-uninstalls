<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('planfy_just_activated');
delete_site_option('planfy_just_activated');
delete_option('planfy_code');
delete_site_option('planfy_code');
delete_option('planfy_account_url');
delete_site_option('planfy_account_url');

