#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mnssp_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'search_scope'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'search_scope'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'search_scope'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'search_scope'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'posttypes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'posttypes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'posttypes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'posttypes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icon_picker'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icon_picker'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icon_picker'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icon_picker'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'limit_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'limit_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'limit_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'limit_per_page'"
