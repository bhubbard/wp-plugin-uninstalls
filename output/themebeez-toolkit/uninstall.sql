-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('themebeez_themes', 'sidebars_widgets', 'widget_block', 'widget_sidebar-widget-four', 'widget_royale-news-pro-main-highlight-two', 'widget_royale-news-pro-slider-highlight_two', 'widget_news-layout-widget-one', 'widget_news-layout-widget-two', 'widget_news-layout-widget-three', 'widget_news-layout-widget-four', 'widget_royale-news-pro-bottom-news-widget-two', 'widget_royale-news-pro-bottom-news-widget-one', 'widget_royale-news-pro-slider-highlight_one', 'widget_royale-news-main-highlight-two', 'widget_royale-news-news-layout-widget-one', 'widget_royale-news-news-layout-widget-two', 'widget_royale-news-bottom-news-widget-one', 'udp_agent_allow_tracking', 'udp_agent_tracking_msg_last_shown_at', 'udp_installed_agents', 'udp_active_agent_basename', 'themebeez_toolkit_demo_importer_data', 'tt_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_is_custom_header', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id', 'menu-item-mega-menu-group-field', 'menu-item-icon-field');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_is_custom_header', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id', 'menu-item-mega-menu-group-field', 'menu-item-icon-field');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_is_custom_header', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id', 'menu-item-mega-menu-group-field', 'menu-item-icon-field');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_is_custom_header', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id', 'menu-item-mega-menu-group-field', 'menu-item-icon-field');

