#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'azc_si_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Series'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Series'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Series'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Series'"
