-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gswps_dummy_shortcode_data_created', 'gswps_dismiss_demo_data_notice', 'gswps_install_demo_shortcodes_initially', 'gs_woops_slider_version', 'gs_woo_slider_shortcode_prefs', 'GSWPS_active_time', 'GSWPS_maybe_later', 'gsadmin_maybe_later', 'gswps_activation_redirect', 'review_dismiss', 'gsadmin_active_time', 'gswps_dummy_woops_data_created', 'woocommerce_default_catalog_orderby', 'GS_woo_Slider_plugin_permalinks_flushed', 'gswps_dummy_shortcode_data_creating', 'gsplugins-pro-plugins', 'gsplugins_free_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gswps_ignore_notice279', 'gs_template_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('gswps_ignore_notice279', 'gs_template_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('gswps_ignore_notice279', 'gs_template_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gswps_ignore_notice279', 'gs_template_type');

