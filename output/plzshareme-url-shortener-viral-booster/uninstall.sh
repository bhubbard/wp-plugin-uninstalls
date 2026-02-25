#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'new_Api_key'
wp option delete 'plzsharemeShortUrlApiUrl'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plzsharemeShortURL%'"
wp option delete 'TwitterTag'
wp option delete 'GoogleTag'
wp option delete 'PinterestTag'
wp option delete 'FacebookTag'
wp option delete 'plzshareme_plugin_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plzsharemeShortURL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plzsharemeShortURL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plzsharemeShortURL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plzsharemeShortURL'"
