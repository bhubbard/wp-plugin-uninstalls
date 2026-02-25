-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('am_sass_path', 'am_use_compass', 'am_compass_path', 'am_coffeescript_path', 'am_async_flag', 'am_dev_mode', 'am_files_to_exclude', 'am_compress_styles', 'am_compress_scripts', 'am_log');

