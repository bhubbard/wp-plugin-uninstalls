#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'indexapi_token'
wp option delete 'indexapi_new_post_index_request'
wp option delete 'indexapi_post_update_index_request'
wp option delete 'indexapi_allowed_post_type'
wp option delete 'indexapi_allowed_taxonomies'
wp option delete 'indexAPI_allowed_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'indexapi_publish'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'indexapi_publish'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'indexapi_publish'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'indexapi_publish'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'indexapi_last_submit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'indexapi_last_submit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'indexapi_last_submit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'indexapi_last_submit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'send_index_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'send_index_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'send_index_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'send_index_request'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'send_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'send_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'send_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'send_request'"
