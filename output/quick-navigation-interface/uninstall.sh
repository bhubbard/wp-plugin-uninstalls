#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qni_content_index_expiration_timestamp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qni_content_index_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qni_content_index_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qni_content_index_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qni_content_index_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qni_content_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qni_content_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qni_content_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qni_content_index'"
