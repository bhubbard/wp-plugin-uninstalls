-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('always_valid_lightbox_add_jquery_library', 'always_valid_lightbox_add_attributes', 'always_valid_lightbox_attribute_to_add', 'always_valid_lightbox_css');

