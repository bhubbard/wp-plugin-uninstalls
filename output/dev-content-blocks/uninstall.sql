-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dc_dcb_html', 'dc_dcb_css', 'dc_dcb_js', 'dc_dcb_show_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('dc_dcb_html', 'dc_dcb_css', 'dc_dcb_js', 'dc_dcb_show_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('dc_dcb_html', 'dc_dcb_css', 'dc_dcb_js', 'dc_dcb_show_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dc_dcb_html', 'dc_dcb_css', 'dc_dcb_js', 'dc_dcb_show_post');

