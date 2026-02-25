-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'mkgd_origin', 'mkgd_destination', 'mkgd_language', 'mkgd_unit_system', 'mkgd_width', 'mkgd_height', 'mkgd_hide_origin', 'mkgd_hide_destination');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'mkgd_origin', 'mkgd_destination', 'mkgd_language', 'mkgd_unit_system', 'mkgd_width', 'mkgd_height', 'mkgd_hide_origin', 'mkgd_hide_destination');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'mkgd_origin', 'mkgd_destination', 'mkgd_language', 'mkgd_unit_system', 'mkgd_width', 'mkgd_height', 'mkgd_hide_origin', 'mkgd_hide_destination');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'mkgd_origin', 'mkgd_destination', 'mkgd_language', 'mkgd_unit_system', 'mkgd_width', 'mkgd_height', 'mkgd_hide_origin', 'mkgd_hide_destination');

