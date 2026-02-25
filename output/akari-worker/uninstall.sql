-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('akari_worker_available_storage', 'akari_worker_max_upload_size', 'akari_worker_google_analytics_id', 'akari_worker_meta_pixel_id', 'akari_worker_custom_script');

