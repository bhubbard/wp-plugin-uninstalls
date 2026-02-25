#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hreflang_tags_mgmt_settings_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hreflang_tags_mgmt_meta_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hreflang_tags_mgmt_meta_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hreflang_tags_mgmt_meta_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hreflang_tags_mgmt_meta_data'"
