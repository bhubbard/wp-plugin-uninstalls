#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'posts_visitors_label_text'
wp option delete 'posts_visitors_checkbox_label'
wp option delete 'posts_visitors_checkbox_icon'
wp option delete 'posts_visitors_icon_class'
wp option delete 'posts_visitors_color'
wp option delete 'posts_visitors_select'
wp option delete 'posts_visitors_general'
wp option delete 'posts_visitors_shortcode'
wp option delete 'posts_visitors_shorcode'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_visitors_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_visitors_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_visitors_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_visitors_count'"
