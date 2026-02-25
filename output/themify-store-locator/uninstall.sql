-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('themify_store_base_slug', 'single_image_size_w', 'single_image_size_h', 'archive_image_size_w', 'archive_image_size_h', 'themify_sl_map_api', 'themify_store_locator_activation_redirect', 'themify_saved_colors', 'themify_saved_gradients');
DELETE FROM wp_options WHERE option_name LIKE 'themify_saved_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('themify_storelocator_address', 'themify_storelocator_numbers', 'themify_storelocator_timing', 'popup_show');
DELETE FROM wp_usermeta WHERE meta_key IN ('themify_storelocator_address', 'themify_storelocator_numbers', 'themify_storelocator_timing', 'popup_show');
DELETE FROM wp_termmeta WHERE meta_key IN ('themify_storelocator_address', 'themify_storelocator_numbers', 'themify_storelocator_timing', 'popup_show');
DELETE FROM wp_commentmeta WHERE meta_key IN ('themify_storelocator_address', 'themify_storelocator_numbers', 'themify_storelocator_timing', 'popup_show');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_attach_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_attach_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_attach_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_attach_id';

