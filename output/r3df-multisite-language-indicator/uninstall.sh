#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'r3df_multisite_language_indicator_global'
wp option delete 'r3df_multisite_language_indicator'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'r3df_multisite_language_indicator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'r3df_multisite_language_indicator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'r3df_multisite_language_indicator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'r3df_multisite_language_indicator'"
