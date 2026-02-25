<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kr_mr_api_token');
delete_site_option('kr_mr_api_token');
delete_option('kr_mr_introduction_text');
delete_site_option('kr_mr_introduction_text');
delete_option('kr_mr_latest_membership_request');
delete_site_option('kr_mr_latest_membership_request');
delete_option('kr_mr_latest_expire_at');
delete_site_option('kr_mr_latest_expire_at');

