-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fakturo_dashboard_options_group', 'fakturo_system_options_group', 'active_sitewide_plugins', 'fktr_license_keys', 'fktr_license_status', 'fktr_first_time_wizard', 'fakturo_info_options_group', 'last_receipt_number', 'last_invoice_number', 'fktr_last_mananger_caps', 'fktr_last_seller_caps', 'fktr_db_version', 'fakturo_addons_data', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE 'fakturo_subscription_email_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', 'balance', 'content', 'description', 'subject', 'assigned', 'stocks', 'receipts');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', 'balance', 'content', 'description', 'subject', 'assigned', 'stocks', 'receipts');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', 'balance', 'content', 'description', 'subject', 'assigned', 'stocks', 'receipts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', 'balance', 'content', 'description', 'subject', 'assigned', 'stocks', 'receipts');

