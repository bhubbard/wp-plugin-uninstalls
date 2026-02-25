<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('poper-cache-notice');
delete_site_option('poper-cache-notice');
delete_option('poper-dismiss-notice');
delete_site_option('poper-dismiss-notice');
delete_option('poper_account_id');
delete_site_option('poper_account_id');
delete_option('poper_account_id_verified');
delete_site_option('poper_account_id_verified');
delete_option('poper_account_id_md5');
delete_site_option('poper_account_id_md5');

// Delete Transients
delete_transient('poper_dismiss_notice_temporary');
delete_site_transient('poper_dismiss_notice_temporary');

