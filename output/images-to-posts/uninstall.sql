-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bip_updated', 'bip_terms', 'bip_post_type', 'bip_image_title', 'bip_post_status', 'bip_taxonomy', 'bip_image_content', 'bip_image_content_size');

