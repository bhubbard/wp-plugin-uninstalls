-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xcart_image_box_size', 'xcart_store_url', 'xcart_template', 'xcart_sso_key', 'xcart_store_page_id');

