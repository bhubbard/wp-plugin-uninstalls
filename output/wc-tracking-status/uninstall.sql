-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('diu_wc_tracking_status', 'diu_wc_send_email', 'diu_wc_use_bootstrap', 'diu_wc_include_notes', 'diu_wc_custom_number_tracking', 'diu_wc_include_plugin_seguimiento');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('status_tracking', 'status_tracking_history', 'diurvan_wc_tracking_orden', 'wc_tracking_number_tracking', 'seguimiento');
DELETE FROM wp_usermeta WHERE meta_key IN ('status_tracking', 'status_tracking_history', 'diurvan_wc_tracking_orden', 'wc_tracking_number_tracking', 'seguimiento');
DELETE FROM wp_termmeta WHERE meta_key IN ('status_tracking', 'status_tracking_history', 'diurvan_wc_tracking_orden', 'wc_tracking_number_tracking', 'seguimiento');
DELETE FROM wp_commentmeta WHERE meta_key IN ('status_tracking', 'status_tracking_history', 'diurvan_wc_tracking_orden', 'wc_tracking_number_tracking', 'seguimiento');

