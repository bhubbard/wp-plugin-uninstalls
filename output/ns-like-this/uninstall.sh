#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'my_liked_content_page_title'
wp option delete 'my_liked_content_page_name'
wp option delete 'my_liked_content_page_id'
wp option delete 'my_liked_content_id'
wp option delete 'nslt_dbVersion'
wp option delete 'nslt_jquery'
wp option delete 'nslt_onPage'
wp option delete 'nslt_useEmblems'
wp option delete 'nslt_textOrImage'
wp option delete 'nslt_text'
wp option delete 'most_liked_content'
wp option delete 'latest_liked_content'
wp option delete 'most_visited_liked_content'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_allow_all'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_allow_all'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_allow_all'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_allow_all'"
