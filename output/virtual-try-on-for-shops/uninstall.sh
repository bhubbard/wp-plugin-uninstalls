#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vtofs_settings'
wp option delete 'vtofs_plugin_version'
wp option delete 'vtofs_onboarding'
wp option delete 'vtofs_free_usage'

# Delete Transients
wp transient delete 'vtofs_do_activation_redirect'
wp transient delete 'vtofs_license_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vtofs_tryon_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vtofs_tryon_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vtofs_tryon_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vtofs_tryon_enabled'"
