-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xoo-wl-list-view', 'xoo_wl_cron_working', 'xoo-wl-gl-enqty', 'xoo-wl-import-started-notice', 'xoo-wl-import-in-progress', 'xoo-wl-import-success', 'xoo_wl_crons_in_queue', 'xoo-wl-schedule-crons', 'xoo_wl_cron_emails', 'xoo-wl-cron-cleanup-last-check', 'xoo-wl-version', 'woocommerce_hide_out_of_stock_items', 'xoo_tracking_consent_waitlist-woocommerce', 'xoo-wl-general-options', 'xoo-wl-email-options', 'xoo-wl-style-options', 'xoo_wl_cron_test_count', 'xoo-wl-gl-enguest', 'woocommerce_myaccount_page_id');
DELETE FROM wp_options WHERE option_name LIKE 'xoo_tracking_consent_%';
DELETE FROM wp_options WHERE option_name LIKE 'xoo_plugin_deactivated_%';
DELETE FROM wp_options WHERE option_name LIKE '%_theme_templates_data';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_xoo_waitlist_disable', '_xoo_waitlist_force_show', '_xoo-wl-users');
DELETE FROM wp_usermeta WHERE meta_key IN ('_xoo_waitlist_disable', '_xoo_waitlist_force_show', '_xoo-wl-users');
DELETE FROM wp_termmeta WHERE meta_key IN ('_xoo_waitlist_disable', '_xoo_waitlist_force_show', '_xoo-wl-users');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_xoo_waitlist_disable', '_xoo_waitlist_force_show', '_xoo-wl-users');

