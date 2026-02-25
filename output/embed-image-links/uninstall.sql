-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('embed_image_links_max_width_percentage', 'embed_image_links_alignment');

