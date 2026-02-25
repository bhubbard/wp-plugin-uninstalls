#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api-token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api-refresh-token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api-expires'"
wp option delete 'cf7-cleverreach_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcf7-cleverreach_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcf7-cleverreach_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcf7-cleverreach_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcf7-cleverreach_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcf7-cleverreach_attribute_mapping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcf7-cleverreach_attribute_mapping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcf7-cleverreach_attribute_mapping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcf7-cleverreach_attribute_mapping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcf7-cleverreach_global_attribute_mapping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcf7-cleverreach_global_attribute_mapping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcf7-cleverreach_global_attribute_mapping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcf7-cleverreach_global_attribute_mapping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcf7-cleverreach_options_mapping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcf7-cleverreach_options_mapping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcf7-cleverreach_options_mapping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcf7-cleverreach_options_mapping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcf7-cleverreach_field_mapping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcf7-cleverreach_field_mapping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcf7-cleverreach_field_mapping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcf7-cleverreach_field_mapping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcf7-cleverreach_option_mapping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcf7-cleverreach_option_mapping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcf7-cleverreach_option_mapping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcf7-cleverreach_option_mapping'"
