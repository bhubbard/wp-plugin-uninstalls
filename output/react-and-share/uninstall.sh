#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rns_do_activation_redirect'
wp option delete 'rns_settings'

# Delete Transients
wp transient delete 'rns-plugin-activation-notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rns_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rns_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rns_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rns_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'rns_reaction_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'rns_reaction_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'rns_reaction_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rns_reaction_%'"
