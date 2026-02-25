-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('specia_media_id', 'widget_archives', 'widget_search', 'widget_meta', 'widget_specia_feature_widget', 'sidebars_widgets', 'item_details_page');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('client_icon_class', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('client_icon_class', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('client_icon_class', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('client_icon_class', '_wp_page_template');

