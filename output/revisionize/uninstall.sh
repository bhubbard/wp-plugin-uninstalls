#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'revisionize_settings'
wp option delete 'revisionize_network_settings'
wp option delete 'revisionize_installed_addons'

# Delete Transients
wp transient delete 'revisionize_available_addons'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_revision_of'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_revision_of'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_revision_of'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_revision_of'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_original'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_original'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_original'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_original'"
