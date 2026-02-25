-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shopanalytics_enable_logging', 'shopanalytics_enable_pro_previews', 'shopanalytics_light_charts', 'shopanalytics_log_retention_days', 'shopanalytics_lite_do_activation_redirect', 'shopanalytics_lite_settings', 'shopanalytics_lite_network_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_country');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_country');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_country');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_country');

