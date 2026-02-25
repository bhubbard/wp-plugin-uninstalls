-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('image_size', 'ignore_columns', 'custom_text', 'custom_text_value', 'thumbnail_caption', 'thumbnail_option', 'image_option', 'scratches', 'show_in_pages');

