#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_cbox_current_package'
wp option delete '_cbox_revision_date'
wp option delete '_cbox_theme_activated'
wp option delete 'recently_activated'
wp option delete 'cboxol_ver'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'cbox_deactivate_cascade'
wp transient delete '_bp_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_cbox_welcome_panel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_cbox_welcome_panel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_cbox_welcome_panel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_cbox_welcome_panel'"
