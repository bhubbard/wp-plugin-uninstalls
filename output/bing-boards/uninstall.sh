#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bing_activation_notice_global_skip'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bing_activation_notice_skip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bing_activation_notice_skip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bing_activation_notice_skip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bing_activation_notice_skip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bing_panel_link_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bing_panel_link_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bing_panel_link_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bing_panel_link_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bing_panel_link_anchor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bing_panel_link_anchor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bing_panel_link_anchor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bing_panel_link_anchor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
