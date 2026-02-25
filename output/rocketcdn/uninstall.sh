#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rocketcdn_api_key'
wp option delete 'rocketcdn_cdn_url'
wp option delete 'rocketcdn_previous_cdn_url'
wp option delete 'rocketcdn_current_version'
wp option delete 'rocketcdn_previous_version'

# Delete Transients
wp transient delete 'rocketcdn_customer_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rocketcdn_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rocketcdn_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rocketcdn_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rocketcdn_dismissed_notices'"
