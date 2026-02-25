#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cwa_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cwa_ignore_change_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cwa_ignore_change_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cwa_ignore_change_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cwa_ignore_change_error'"
