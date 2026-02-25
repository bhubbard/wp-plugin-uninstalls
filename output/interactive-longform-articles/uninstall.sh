#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'int_option_enable_for_posts'
wp option delete 'int_option_enable_for_projects'
wp option delete 'int_option_enable_for_casestudies'
wp option delete 'int_option_enable_post_type'
wp option delete 'int_option_display_downloads'
wp option delete 'int_option_allow_iframes'
wp option delete 'int_option_google_analytics'
wp option delete 'int_option_tracker_name'
wp option delete 'int_option_progress_color'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'int_option_enable_for_%'"
wp option delete 'default_post_edit_rows'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'int_article_sections'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'int_article_sections'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'int_article_sections'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'int_article_sections'"
