#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rr_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_rocket_reader'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_rocket_reader'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_rocket_reader'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_rocket_reader'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_rocket_reader'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_rocket_reader'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_rocket_reader'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_rocket_reader'"
