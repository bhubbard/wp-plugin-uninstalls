-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('promociones_tap_options_framework', 'options_framework');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_promocion_width', '_promocion_height', '_promocion_link', '_promocion_link_target');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_promocion_width', '_promocion_height', '_promocion_link', '_promocion_link_target');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_promocion_width', '_promocion_height', '_promocion_link', '_promocion_link_target');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_promocion_width', '_promocion_height', '_promocion_link', '_promocion_link_target');

