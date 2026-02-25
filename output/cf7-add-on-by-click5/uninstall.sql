-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('click5_cf7_addon_const_values', 'click5_cf7_addon_notifications', 'click5_cf7_addon_notifications_count_errors', 'posting_url', 'click5_cf7_addon_posting_url', 'click5_cf7_addon_crm_fields_stored');
DELETE FROM wp_options WHERE option_name LIKE 'click5_cf7_authentication_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'form_enable_%';
DELETE FROM wp_options WHERE option_name LIKE 'click5_cf7_addon_form_enable_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_form');
DELETE FROM wp_usermeta WHERE meta_key IN ('_form');
DELETE FROM wp_termmeta WHERE meta_key IN ('_form');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_form');

