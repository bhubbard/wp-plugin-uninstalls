#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lwptoc_general'
wp option delete 'lwptoc_appearance'
wp option delete 'lwptoc_autoInsert'
wp option delete 'lwptoc_misc'
wp option delete 'rate_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ct_builder_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ct_builder_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ct_builder_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ct_builder_json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lwptoc_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lwptoc_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lwptoc_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lwptoc_settings'"
