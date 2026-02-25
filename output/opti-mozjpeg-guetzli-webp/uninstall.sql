-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmjgu_batch_optimization_intensive_resources_consumption_mode', 'wpmjgu_batch_optimization_max_simultaneous_processes', 'wpmjgu_mode', 'wpmjgu_path_filter', 'wpmjgu_jpeg_encoder_location', 'wpmjgu_plugin_working_directory', 'wpmjgu_default_jpeg_quality', 'wpmjgu_jpeg_compression_min_benefit', 'wpmjgu_ssh_server', 'wpmjgu_ssh_port', 'wpmjgu_ssh_username', 'wpmjgu_ssh_password', 'wpmjgu_ssh_working_directory', 'wpmjgu_mozjpeg_encoder_directory', 'wpmjgu_guetzli_encoder_directory', 'wpmjgu_webp_encoder_directory', 'wpmjgu_settings_validation_error');
DELETE FROM wp_options WHERE option_name LIKE '%_errorvalue';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpmjgu_webp_duplicate', 'wpmjgu_optimized');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpmjgu_webp_duplicate', 'wpmjgu_optimized');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpmjgu_webp_duplicate', 'wpmjgu_optimized');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpmjgu_webp_duplicate', 'wpmjgu_optimized');

