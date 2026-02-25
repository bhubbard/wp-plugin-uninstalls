#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'new_Api_key'
wp option delete 'plinkShortUrlApiUrl'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plinkShortURL%'"
wp option delete 'plink_plugin_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plinkShortURL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plinkShortURL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plinkShortURL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plinkShortURL'"
