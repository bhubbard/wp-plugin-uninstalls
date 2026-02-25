-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpvivid_optimization_options', 'wpvivid_connect_key', 'wpvivid_server_cache', 'wpvivid_get_optimization_url', 'wpvivid_dashboard_info', 'wpvivid_imgoptim_user', 'wpvivid_image_opt_task', 'wpvivid_get_get_overview', 'wpvivid_imgoptim_overview', 'wpvivid_image_opt_task_cancel', 'wpvivid_get_need_optimize_images', 'medium_large_size_w', 'medium_large_size_h');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpvivid_image_optimize_meta', 'wpvivid_backup_image_meta', 'wpvivid_image_og_pixel_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpvivid_image_optimize_meta', 'wpvivid_backup_image_meta', 'wpvivid_image_og_pixel_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpvivid_image_optimize_meta', 'wpvivid_backup_image_meta', 'wpvivid_image_og_pixel_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpvivid_image_optimize_meta', 'wpvivid_backup_image_meta', 'wpvivid_image_og_pixel_meta');

