<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ztb_source');
delete_site_option('ztb_source');
delete_option('ztb_id');
delete_site_option('ztb_id');
delete_option('ztb_domainid');
delete_site_option('ztb_domainid');
delete_option('ztb_email');
delete_site_option('ztb_email');
delete_option('access_key');
delete_site_option('access_key');
delete_option('ztb_access_key');
delete_site_option('ztb_access_key');
delete_option('ztb_status_message');
delete_site_option('ztb_status_message');
delete_option('ztb_status_disconnect');
delete_site_option('ztb_status_disconnect');
delete_option('ztb_token_key');
delete_site_option('ztb_token_key');

