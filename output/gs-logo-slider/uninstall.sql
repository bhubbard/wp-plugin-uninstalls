-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gslogo_dummy_logo_data_created', 'gslogo_dummy_shortcode_data_created', 'gs_logo_autoimport_done', 'gs_logo_slider_shortcode_prefs', 'gslogo_activation_redirect', 'gslogo_active_time', 'gslogo_maybe_later', 'gsadmin_maybe_later', 'gslogo_review_dismiss', 'GS_Logo_Slider_plugin_permalinks_flushed', 'GS_Logo_plugin_permalinks_flushed', 'gslogo_term_order_column_done', 'gslogo_dummy_logo_data_creating', 'gslogo_dummy_shortcode_data_creating', 'gslogo_dummy_terms', 'gslogo_dummy_attachments', 'gslogo_dummy_logos', 'gsplugins-pro-plugins', 'gsplugins_free_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('client_url', 'gslogo-demo_data', '_thumbnail_id', 'gslogo_ignore_notice279', '_gs_logo_import_id', '_wp_attachment_image_alt', 'gs_logo_expire_at', '_listing_image_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('client_url', 'gslogo-demo_data', '_thumbnail_id', 'gslogo_ignore_notice279', '_gs_logo_import_id', '_wp_attachment_image_alt', 'gs_logo_expire_at', '_listing_image_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('client_url', 'gslogo-demo_data', '_thumbnail_id', 'gslogo_ignore_notice279', '_gs_logo_import_id', '_wp_attachment_image_alt', 'gs_logo_expire_at', '_listing_image_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('client_url', 'gslogo-demo_data', '_thumbnail_id', 'gslogo_ignore_notice279', '_gs_logo_import_id', '_wp_attachment_image_alt', 'gs_logo_expire_at', '_listing_image_id');

