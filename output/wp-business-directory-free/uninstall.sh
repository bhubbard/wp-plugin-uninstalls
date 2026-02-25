#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'media_selector_attachment_id'

# Delete Transients
wp transient delete 'wpbdf-admin-notice-welcome'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
