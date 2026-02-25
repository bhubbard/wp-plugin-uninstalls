-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('logo_img', 'desktop_width', 'desktop_height', 'tablet_wigth', 'tablet_heigth', 'mobile_width', 'mobile_heigth', 'tablet_width', 'wpspf_toolbar_color', 'wpspf_bg_color', 'wpspf_title_color', 'wpspf_border_color', 'wpspf_row_item', 'tablet_heidht');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sites_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('sites_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('sites_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sites_url');

