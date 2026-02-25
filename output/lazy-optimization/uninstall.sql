-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lzyopti_global_images_to_exclude', 'lzyopti_replace_image', 'lzyopti_delete_all_data', 'lzyopti_already_done_single_css', 'autoptimize_css');

