-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_pls_simple_method', 'wp_pls_root', 'wp_pls_load_external', 'wp_pls_process_gif_images', 'wp_pls_db_version', 'wp_pls_version', 'wp_pls_found_root', 'wp_pls_has_updated_files', 'wp_pls_has_gd', 'wp_pls_cant_update');

