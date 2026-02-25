#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_elementor_fep_settings'
wp option delete 'fep_informations'
wp option delete 'fep_how_to_configure'
wp option delete 'fep_debug'

# Delete Transients
wp transient delete 'fep-admin-notice-migration-done'
wp transient delete 'fep-admin-notice-activation'
wp transient delete 'fep-admin-notice-update-user-preferences'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementor_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementor_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementor_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementor_preferences'"
