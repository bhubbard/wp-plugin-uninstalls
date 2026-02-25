<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wbsync_xero_api');
delete_site_option('wbsync_xero_api');
delete_option('wbsync_woo_xero_sync_guid');
delete_site_option('wbsync_woo_xero_sync_guid');
delete_option('wbsync_xero_con_guid');
delete_site_option('wbsync_xero_con_guid');
delete_option('wbsync_xero_sync_active');
delete_site_option('wbsync_xero_sync_active');
delete_option('wbsync_woo_xero_taxcodes');
delete_site_option('wbsync_woo_xero_taxcodes');
delete_option('wbsync_woo_xero_items');
delete_site_option('wbsync_woo_xero_items');
delete_option('wbsync_woo_xero_customers');
delete_site_option('wbsync_woo_xero_customers');
delete_option('wbsync_woo_xero_accounts');
delete_site_option('wbsync_woo_xero_accounts');
delete_option('wbsync_xero_woo_guid');
delete_site_option('wbsync_xero_woo_guid');
delete_option('wbsync_xero_sync_settings');
delete_site_option('wbsync_xero_sync_settings');
delete_option('wbsync_woo_qbo_sync_guid');
delete_site_option('wbsync_woo_qbo_sync_guid');

