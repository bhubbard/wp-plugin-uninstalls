#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blockonomics_edd_db_version'
wp option delete 'blockonomics_timeperiod'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blockonomics_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blockonomics_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blockonomics_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blockonomics_address'"
