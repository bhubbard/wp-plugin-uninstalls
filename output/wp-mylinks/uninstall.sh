#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_mylinks_hide_notice'
wp option delete 'mylinks_theme'
wp option delete 'mylinks_meta_title'
wp option delete 'mylinks_meta_description'
wp option delete 'mylinks_upload_favicon'
wp option delete 'wp_mylinks_nofollow'
wp option delete 'wp_mylinks_noindex'
wp option delete 'wp_mylinks_credits'
wp option delete 'wp_mylinks_analytics'
wp option delete 'wp_mylinks_header_script'
wp option delete 'wp_mylinks_open_body_script'
wp option delete 'wp_mylinks_footer_script'
wp option delete 'wp_mylinks_custom_css'
wp option delete 'wp_mylinks_dequeue'
wp option delete 'default_post_edit_rows'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_mylinks_count_visits'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_mylinks_count_visits'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_mylinks_count_visits'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_mylinks_count_visits'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
