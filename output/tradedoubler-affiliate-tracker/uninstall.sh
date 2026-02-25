#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tradedoubler_credentials'
wp option delete 'tradedoubler_org_ID'
wp option delete 'tradedoubler_program_ID'
wp option delete 'tradedoubler_event_ID'
wp option delete 'tradedoubler_vat_commision'
wp option delete 'tradedoubler_shipping_commision'
wp option delete 'activated_codes_tradedoubler'
wp option delete 'tradedoubler_last_time_feed_update'
wp option delete 'tradedoubler_segment_ID'
wp option delete 'tradedoubler_feeds'
wp option delete 'last_hubspot_update'

# Delete Transients
wp transient delete 'user_token_tradedoublerAPI'
wp transient delete 'token_res_tradedoublerAPI'
wp transient delete 'product_feeds_tradedoublerAPI'
wp transient delete 'program_name_tradedoublerAPI'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_count'"
