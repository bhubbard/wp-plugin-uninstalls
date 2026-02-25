#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcf7'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecrmt_error_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecrmt_error_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecrmt_error_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecrmt_error_message'"
