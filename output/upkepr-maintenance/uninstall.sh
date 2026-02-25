#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'upkeprvalidationkeycstm'
wp option delete 'upkpr_vulnerability_all'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'upkpr_vulnerability_%'"
wp option delete 'upkpr_vulnerability_theme'
wp option delete 'upkpr_vulnerability_core'
wp option delete 'upkpr_vulnerability_plugin'
wp option delete 'upkepr-maintenance-json'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'upkprtkn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'upkprtkn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'upkprtkn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'upkprtkn'"
