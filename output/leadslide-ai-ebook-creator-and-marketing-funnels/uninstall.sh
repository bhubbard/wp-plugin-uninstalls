#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'leadslide_options'

# Delete Transients
wp transient delete 'leadslide_admin_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'campaign_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'campaign_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'campaign_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'campaign_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'publish_api_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'publish_api_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'publish_api_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'publish_api_key'"
