#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_hook'
wp option delete 'api_key'
wp option delete 'wc_label'
wp option delete 'show_labels'
wp option delete 'optin_type'
wp option delete 'success_string'
wp option delete 'double_string'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom-meta-box2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom-meta-box2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom-meta-box2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom-meta-box2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom-meta-box'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom-meta-box'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom-meta-box'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom-meta-box'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'news_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'news_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'news_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'news_check'"
