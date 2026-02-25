#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tonjoo_ecae_options'
wp option delete 'ecae_ignore_notice'
wp option delete 'ecae_later_date'
wp option delete 'ecae_start_date'

# Delete Transients
wp transient delete 'tonjoo_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecae_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecae_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecae_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecae_meta'"
