#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'page_body_background_color_picker'
wp option delete 'page_content_background_color_picker'
wp option delete 'post_body_background_color_picker'
wp option delete 'post_content_background_color_picker'
wp option delete 'widgets_background_color_picker'
wp option delete 'my_plugin_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'body_background_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'body_background_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'body_background_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'body_background_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_background_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_background_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_background_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_background_color'"
