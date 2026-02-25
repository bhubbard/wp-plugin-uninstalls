#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sl_trans_API_key'
wp option delete 'sl_trans_API_secret'
wp option delete 'sl_trans_ID'
wp option delete 'sl_trans_google_apikey'
wp option delete 'sl_trans_google_prid'
wp option delete 'sl_trans_timing_check'
wp option delete 'sl_trans_type_check'
wp option delete 'sl_trans_tax_check'
wp option delete 'sl_trans_engine'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sl_trans_newPost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sl_trans_newPost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sl_trans_newPost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sl_trans_newPost'"
