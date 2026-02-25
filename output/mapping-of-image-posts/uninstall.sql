-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('MOIP_MAX_ATTACHMENTS_PER_SCAN', 'moip_image_type', 'moip_out_file_type', 'mapping_of_image_posts_filename', 'lines_affected');

