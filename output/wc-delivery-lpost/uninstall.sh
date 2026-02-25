#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lpost_wc_api_test'
wp option delete 'lpost_wc_logging'
wp option delete 'lpost_wc_api_secret'
wp option delete 'lpost_wc_api_token'
wp option delete 'lpost_wc_api_token_date'
wp option delete 'lpost_wc_api_hash'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lp_shipment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lp_shipment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lp_shipment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lp_shipment_id'"
