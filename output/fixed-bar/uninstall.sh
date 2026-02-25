#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fixbar_icon_open_handler'
wp option delete 'fixbar_color_open_handler'
wp option delete 'fixbar_icon_close_handler'
wp option delete 'fixbar_color_close_handler'
wp option delete 'fixbarVeHandler'
wp option delete 'fixbar_valid_post_types_handler'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fixbar_icon_open_post_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fixbar_icon_open_post_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fixbar_icon_open_post_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fixbar_icon_open_post_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fixbar_color_open_post_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fixbar_color_open_post_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fixbar_color_open_post_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fixbar_color_open_post_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fixbar_icon_close_post_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fixbar_icon_close_post_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fixbar_icon_close_post_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fixbar_icon_close_post_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fixbar_color_close_post_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fixbar_color_close_post_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fixbar_color_close_post_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fixbar_color_close_post_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_ve_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_ve_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_ve_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_ve_value_key'"
