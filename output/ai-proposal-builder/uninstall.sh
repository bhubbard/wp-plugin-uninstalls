#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bitcx_aipb_ai_api_key'
wp option delete 'bitcx_aipb_page_id'
wp option delete 'bitcraftx_aipb_page_id'

# Delete Transients
wp transient delete 'bitcx_aipb_page_created'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bitcx_portfolio_item_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bitcx_portfolio_item_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bitcx_portfolio_item_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bitcx_portfolio_item_link'"
