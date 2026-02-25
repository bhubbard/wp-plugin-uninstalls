#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jekyll_export_start_time'
wp option delete '_hidden_option'
wp option delete 'visible_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'serialized_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'serialized_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'serialized_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'serialized_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'empty_string'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'empty_string'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'empty_string'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'empty_string'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'false_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'false_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'false_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'false_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zero_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zero_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zero_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zero_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'null_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'null_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'null_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'null_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'non_empty_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'non_empty_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'non_empty_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'non_empty_value'"
