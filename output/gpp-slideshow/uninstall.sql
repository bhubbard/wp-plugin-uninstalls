-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gpp_gallery', 'gpp_gallery_slug', 'widget_gpp-gallery-widget');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_custom_textbox', '_custom_selectbox', 'gpp_gallery_hiddenids', 'gpp_gallery_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_custom_textbox', '_custom_selectbox', 'gpp_gallery_hiddenids', 'gpp_gallery_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_custom_textbox', '_custom_selectbox', 'gpp_gallery_hiddenids', 'gpp_gallery_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_custom_textbox', '_custom_selectbox', 'gpp_gallery_hiddenids', 'gpp_gallery_description');

