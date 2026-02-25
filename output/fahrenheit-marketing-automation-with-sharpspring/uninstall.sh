#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fm_ss_plugin_settings'
wp option delete 'wc_ss_plugin_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ss_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ss_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ss_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ss_transaction_id'"
