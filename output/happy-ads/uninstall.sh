#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'happy_ads_settings'
wp option delete 'rewrite_rules'
wp option delete 'active_sitewide_plugins'
wp option delete 'happy_ads_version'
wp option delete 'happy_ads_install_date'

# Delete Transients
wp transient delete 'happy_ads_api_connected'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'happy_ads_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'happy_ads_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'happy_ads_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'happy_ads_dismissed_notices'"
