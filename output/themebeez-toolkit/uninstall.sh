#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'themebeez_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'
wp option delete 'widget_block'
wp option delete 'widget_sidebar-widget-four'
wp option delete 'widget_royale-news-pro-main-highlight-two'
wp option delete 'widget_royale-news-pro-slider-highlight_two'
wp option delete 'widget_news-layout-widget-one'
wp option delete 'widget_news-layout-widget-two'
wp option delete 'widget_news-layout-widget-three'
wp option delete 'widget_news-layout-widget-four'
wp option delete 'widget_royale-news-pro-bottom-news-widget-two'
wp option delete 'widget_royale-news-pro-bottom-news-widget-one'
wp option delete 'widget_royale-news-pro-slider-highlight_one'
wp option delete 'widget_royale-news-main-highlight-two'
wp option delete 'widget_royale-news-news-layout-widget-one'
wp option delete 'widget_royale-news-news-layout-widget-two'
wp option delete 'widget_royale-news-bottom-news-widget-one'
wp option delete 'udp_agent_allow_tracking'
wp option delete 'udp_agent_tracking_msg_last_shown_at'
wp option delete 'udp_installed_agents'
wp option delete 'udp_active_agent_basename'

# Delete Transients
wp transient delete 'themebeez_toolkit_demo_importer_data'
wp transient delete 'tt_plugins'

# Clear Cron Jobs
wp cron event delete 'cc_udp_agent_send_data'
wp cron event delete 'udp_agent_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu-item-mega-menu-group-field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu-item-mega-menu-group-field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu-item-mega-menu-group-field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu-item-mega-menu-group-field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu-item-icon-field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu-item-icon-field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu-item-icon-field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu-item-icon-field'"
