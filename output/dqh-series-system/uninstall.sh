#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'DQH_name_type'
wp option delete 'DQH_name'
wp option delete 'DQH_rewite'
wp option delete 'DQH_lang_parent_post'
wp option delete 'DQH_title_in_post'
wp option delete 'DQH_next_post'
wp option delete 'DQH_previous_post'
wp option delete 'DQH_paging_chapter'
wp option delete 'DQH_chapers_per_page'
wp option delete 'DQH_html_list'
wp option delete 'DQH_rewrite'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mts_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mts_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mts_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mts_post_type'"
