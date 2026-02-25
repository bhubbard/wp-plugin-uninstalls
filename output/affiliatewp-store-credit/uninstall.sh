#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'affwp_version'
wp option delete 'affwp_sc_version'
wp option delete 'affwp_sc_version_upgraded_from'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'affwp_wc_credit_balance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'affwp_wc_credit_balance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'affwp_wc_credit_balance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'affwp_wc_credit_balance'"
