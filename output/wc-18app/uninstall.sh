#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc18-password'
wp option delete 'wc18-categories'
wp option delete 'wc18-image'
wp option delete 'wc18-cert-activation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc-codice-18app'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc-codice-18app'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc-codice-18app'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc-codice-18app'"
