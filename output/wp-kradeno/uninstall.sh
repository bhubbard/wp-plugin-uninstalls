#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpkr_exclude_sites'
wp option delete 'wpkr_googlecalls'
wp option delete 'wpkr_ratinglimit'
wp option delete 'wpkr_lastcheck'
wp option delete 'wpkr_recheckdays'
wp option delete 'wpkr_ignoreposts'
wp option delete 'wpkr_db_version'
wp option delete 'wpkr_token'
wp option delete 'wpkr_recheckperiod'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpkr_lastchecked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpkr_lastchecked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpkr_lastchecked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpkr_lastchecked'"
