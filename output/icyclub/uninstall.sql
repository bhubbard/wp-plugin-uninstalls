-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('item_details_page', 'widget_businessup_slider-widget', 'widget_businessup_service_widget', 'widget_archives', 'widget_search', 'sidebars_widgets', 'widget_transportex_slider-widget', 'widget_transportex_service_widget', 'widget_yoga_slider-widget', 'widget_yoga_service_widget');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

