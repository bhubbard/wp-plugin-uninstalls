-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('click5_wpf_addon_const_values', 'click5_wpf_addon_notifications', 'click5_wpf_addon_notifications_count_errors', 'click5_wpf_addon_crm_fields_stored', 'posting_url', 'click5_wpf_addon_posting_url');
DELETE FROM wp_options WHERE option_name LIKE 'click5_wpf_authentication_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'click5_wpf_addon_form_enable_%';
DELETE FROM wp_options WHERE option_name LIKE 'form_enable_%';

