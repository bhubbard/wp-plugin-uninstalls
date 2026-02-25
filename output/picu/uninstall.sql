-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('picu_send_html_mails', 'picu_from_name', 'picu_from_email', 'picu_picu_love', 'picu_theme', 'picu_notification_email', 'picu_send_password', 'picu_telemetry_nag', 'picu_collection_slug', 'picu_random_slugs', 'picu_settings_version', 'picu_password_by_default', 'picu_expiration', 'picu_send_reminder', 'picu_default_image_processor', 'picu_telemetry_settings', 'wp_mail_smtp', 'picu_telemetry_processed', 'picu_settings', 'picu_settings_brand_customize', 'picu_site_title', 'picu_font', 'picu_image_size', 'picu_after_approval', 'picu_settings_import', 'picu_settings_theft_protection', 'picu_disable_right_click', 'picu_watermark', 'picu_telemetry_cache', 'picu_telemetry_cache_orders', 'picu_telemetry_delivery_processed', 'picu_registration_email_required', '_picu_welcome_screen_activation_redirect', 'picu_collection_slug', 'picu_collection_old_slugs');
DELETE FROM wp_options WHERE option_name LIKE '%_picu_notifications';
DELETE FROM wp_options WHERE option_name LIKE 'picu_%';
DELETE FROM wp_options WHERE option_name LIKE 'picu_import_%';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE 'picu_pro_box_hidden_%';
DELETE FROM wp_options WHERE option_name LIKE 'picu_telemetry_nag_%';
DELETE FROM wp_options WHERE option_name LIKE 'picu_previous_image_order_%';
DELETE FROM wp_options WHERE option_name LIKE 'picu_old_gallery_ids_%';
DELETE FROM wp_options WHERE option_name LIKE 'picu_hide_bf_banner_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_picu_collection_share_method', '_picu_collection_hashes', '_picu_collection_description', '_picu_delivery_description', '_picu_collection_expiration', '_picu_collection_expiration_time', '_picu_collection_email_address', '_picu_collection_selection', '_picu_delivery_share_method', '_picu_collection_gallery_ids', '_picu_collection_history', '_picu_original_filename', '_picu_context', '_picu_collection_delivery_ids', '_picu_delivery_email_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('_picu_collection_share_method', '_picu_collection_hashes', '_picu_collection_description', '_picu_delivery_description', '_picu_collection_expiration', '_picu_collection_expiration_time', '_picu_collection_email_address', '_picu_collection_selection', '_picu_delivery_share_method', '_picu_collection_gallery_ids', '_picu_collection_history', '_picu_original_filename', '_picu_context', '_picu_collection_delivery_ids', '_picu_delivery_email_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('_picu_collection_share_method', '_picu_collection_hashes', '_picu_collection_description', '_picu_delivery_description', '_picu_collection_expiration', '_picu_collection_expiration_time', '_picu_collection_email_address', '_picu_collection_selection', '_picu_delivery_share_method', '_picu_collection_gallery_ids', '_picu_collection_history', '_picu_original_filename', '_picu_context', '_picu_collection_delivery_ids', '_picu_delivery_email_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_picu_collection_share_method', '_picu_collection_hashes', '_picu_collection_description', '_picu_delivery_description', '_picu_collection_expiration', '_picu_collection_expiration_time', '_picu_collection_email_address', '_picu_collection_selection', '_picu_delivery_share_method', '_picu_collection_gallery_ids', '_picu_collection_history', '_picu_original_filename', '_picu_context', '_picu_collection_delivery_ids', '_picu_delivery_email_address');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_picu_collection_selection_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_picu_collection_selection_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_picu_collection_selection_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_picu_collection_selection_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_email_address';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_email_address';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_email_address';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_email_address';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ids';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ids';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ids';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ids';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_picu_collection_reminder_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_picu_collection_reminder_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_picu_collection_reminder_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_picu_collection_reminder_%';

