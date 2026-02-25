-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ipbl_ip_pref', 'ipbl_version', 'ipbl_settings', 'ipbl_dropdown', 'ipbl_sync_settings', 'ipbl_dismiss_sale_notice', 'ipbl_sync_time', 'ipbl_donate_popup');

