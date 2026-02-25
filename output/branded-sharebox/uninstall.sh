#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'branded_sharebox_api_key'
wp option delete 'branded_sharebox_domain'
wp option delete 'branded_sharebox_show_on'
wp option delete 'branded_sharebox_show_at'
wp option delete 'branded_sharebox_show_counter'
wp option delete 'branded_sharebox_align_where'
wp option delete 'branded_sharebox_button_style'
wp option delete 'branded_sharebox_should_float'
wp option delete 'branded_sharebox_show_non_singular'
wp option delete 'branded_sharebox_icon_color'
wp option delete 'branded_sharebox_icon_color_custom'
wp option delete 'branded_sharebox_icon_size'
wp option delete 'branded_sharebox_icon_size_custom'
wp option delete 'branded_sharebox_url_box'
wp option delete 'branded_sharebox_url_social_link'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'branded_sharebox_link_click_counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'branded_sharebox_link_click_counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'branded_sharebox_link_click_counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'branded_sharebox_link_click_counter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'branded_sharebox_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'branded_sharebox_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'branded_sharebox_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'branded_sharebox_url'"
