-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gui_option', 'gui_costom_css', 'gui_addons', 'gui_button_list', 'gui_button_order', 'gui_framework_available', 'gui_framework_googlefont', 'gui_google_fonts', 'gui_css_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gui_postmeta_description', '_gui_postmeta_html', '_gui_postmeta_css', '_gui_postmeta_js');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gui_postmeta_description', '_gui_postmeta_html', '_gui_postmeta_css', '_gui_postmeta_js');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gui_postmeta_description', '_gui_postmeta_html', '_gui_postmeta_css', '_gui_postmeta_js');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gui_postmeta_description', '_gui_postmeta_html', '_gui_postmeta_css', '_gui_postmeta_js');

