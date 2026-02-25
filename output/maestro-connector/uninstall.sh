#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bh_maestro_activation_redirect'
wp option delete 'auto_update_plugins'
wp option delete 'allow_major_auto_core_updates'
wp option delete 'allow_minor_auto_core_updates'
wp option delete 'auto_update_themes'
wp option delete 'auto_update_plugin'
wp option delete 'auto_update_theme'
wp option delete 'bh_maestro_sso_log'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_core'
wp transient delete 'update_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bh_maestro_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bh_maestro_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bh_maestro_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bh_maestro_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bh_maestro_added_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bh_maestro_added_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bh_maestro_added_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bh_maestro_added_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bh_maestro_added_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bh_maestro_added_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bh_maestro_added_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bh_maestro_added_time'"
