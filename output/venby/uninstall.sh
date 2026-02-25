#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ops_getcampaignsscripts_venby'
wp option delete 'ops_apikey_venby'
wp option delete 'ops_getcampaignids_venby'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'campaign_selected'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'campaign_selected'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'campaign_selected'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'campaign_selected'"
