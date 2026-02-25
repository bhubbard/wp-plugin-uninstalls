#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eslgp_settings'
wp option delete 'eslgp_show_setup_notice'
wp option delete 'eslgp_wizard_progress'

# Delete Transients
wp transient delete 'eslgp_plugin_last_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'google_profile_picture'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'google_profile_picture'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'google_profile_picture'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'google_profile_picture'"
