#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quick_search_form_id'
wp option delete 'quick_search_max_chars'
wp option delete 'quick_search_show_posts'
wp option delete 'quick_search_show_pages'
wp option delete 'quick_search_show_comments'
wp option delete 'quick_search_posts_limit'
wp option delete 'quick_search_pages_limit'
wp option delete 'quick_search_comments_limit'
wp option delete 'quick_search_menu_width'
wp option delete 'quick_search_menu_bgcolor'
wp option delete 'quick_search_menu_label_bgcolor'
wp option delete 'quick_search_menu_label_color'

