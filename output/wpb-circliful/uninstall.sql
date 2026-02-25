-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_cmb_wpb_dimension', '_cmb_wpb_percent', '_cmb_wpb_type', '_cmb_wpb_width', '_cmb_wpb_fontsize', '_cmb_wpb_color', '_cmb_wpb_icon');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_cmb_wpb_dimension', '_cmb_wpb_percent', '_cmb_wpb_type', '_cmb_wpb_width', '_cmb_wpb_fontsize', '_cmb_wpb_color', '_cmb_wpb_icon');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_cmb_wpb_dimension', '_cmb_wpb_percent', '_cmb_wpb_type', '_cmb_wpb_width', '_cmb_wpb_fontsize', '_cmb_wpb_color', '_cmb_wpb_icon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_cmb_wpb_dimension', '_cmb_wpb_percent', '_cmb_wpb_type', '_cmb_wpb_width', '_cmb_wpb_fontsize', '_cmb_wpb_color', '_cmb_wpb_icon');

