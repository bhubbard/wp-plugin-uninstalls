<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lenochat_status');
delete_site_option('lenochat_status');
delete_option('lenochat_license');
delete_site_option('lenochat_license');
delete_option('lenochat_language');
delete_site_option('lenochat_language');
delete_option('lenochat_company_id');
delete_site_option('lenochat_company_id');

