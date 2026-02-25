-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbsync_xero_api', 'wbsync_woo_xero_sync_guid', 'wbsync_xero_con_guid', 'wbsync_xero_sync_active', 'wbsync_woo_xero_taxcodes', 'wbsync_woo_xero_items', 'wbsync_woo_xero_customers', 'wbsync_woo_xero_accounts', 'wbsync_xero_woo_guid', 'wbsync_xero_sync_settings', 'wbsync_woo_qbo_sync_guid');

