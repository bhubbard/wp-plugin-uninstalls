#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp_groupblog_blog_defaults_options'
wp option delete 'bp_groupblog_blog_defaults_setup'
wp option delete 'p2_rewrites_flushed'
wp option delete 'prologue_show_titles'
wp option delete 'p2_background_color'
wp option delete 'p2_background_image'
wp option delete 'p2_hide_sidebar'
wp option delete 'p2_allow_users_publish'
wp option delete 'p2_hide_threads'
wp option delete 'p2_prompt_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'created_by_groupblog_dont_change'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'created_by_groupblog_dont_change'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'created_by_groupblog_dont_change'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'created_by_groupblog_dont_change'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities'"
