#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hubspot_api_token'
wp option delete 'hubspot_deal_stage'
wp option delete 'hubspot_pipeline'
wp option delete 'store_deals_api_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hubspot_deal_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hubspot_deal_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hubspot_deal_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hubspot_deal_id'"
