-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ninjalytics_settings', 'ninjalytics_hide_inactive_templates', 'hm_psr_report_settings');
DELETE FROM wp_options WHERE option_name LIKE 'ninjalytics_report_dates_%';
DELETE FROM wp_options WHERE option_name LIKE 'hm_psrp_fields_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_stock', '_manage_stock', '_cogs_total_value', 'ninjalytics_admin_notice_hide');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_stock', '_manage_stock', '_cogs_total_value', 'ninjalytics_admin_notice_hide');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_stock', '_manage_stock', '_cogs_total_value', 'ninjalytics_admin_notice_hide');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_stock', '_manage_stock', '_cogs_total_value', 'ninjalytics_admin_notice_hide');

