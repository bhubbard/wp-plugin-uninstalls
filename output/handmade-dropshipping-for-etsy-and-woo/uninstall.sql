-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('handmade_params', 'woocommerce_logs_retention_period_days', 'handmade_setup_wizard', 'default_product_cat', 'villatheme_hide_admin_toolbar', 'villatheme_call', 'villatheme_notices', 'villatheme_called', 'villatheme_ads');
DELETE FROM wp_options WHERE option_name LIKE '%_temp_api_credentials';
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_background_download_images_complete';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';
DELETE FROM wp_options WHERE option_name LIKE '%_complete';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '_product_image_gallery', '_wp_page_template', '_handmade_image_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '_product_image_gallery', '_wp_page_template', '_handmade_image_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '_product_image_gallery', '_wp_page_template', '_handmade_image_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '_product_image_gallery', '_wp_page_template', '_handmade_image_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_imported_per_page';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_imported_per_page';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_imported_per_page';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_imported_per_page';

