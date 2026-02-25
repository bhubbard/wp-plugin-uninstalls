#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcondify_log'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'condify_condition_relation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'condify_condition_relation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'condify_condition_relation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'condify_condition_relation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcondify_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcondify_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcondify_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcondify_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcondify_condition_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcondify_condition_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcondify_condition_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcondify_condition_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcondify_woo_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcondify_woo_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcondify_woo_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcondify_woo_condition'"
