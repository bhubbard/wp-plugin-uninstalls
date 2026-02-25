#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'linguise_install_time'
wp option delete 'linguise_options'
wp option delete 'linguise_version'
wp option delete 'linguise_feedback_notify_dismissed'

# Delete Transients
wp transient delete 'linguise_multisite_subdomain'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linguise_menu_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linguise_menu_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linguise_menu_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linguise_menu_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linguise_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linguise_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linguise_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linguise_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linguise_register_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linguise_register_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linguise_register_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linguise_register_language'"
