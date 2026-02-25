#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'b7e_cu_old_username'
wp option delete 'b7e_cu_new'
wp option delete 'allowed_roles'

# Delete Transients
wp transient delete 'brozzme_plugins_api_results'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_brozzme_plugins_api_version_%' OR option_name LIKE '_site_transient_brozzme_plugins_api_version_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
