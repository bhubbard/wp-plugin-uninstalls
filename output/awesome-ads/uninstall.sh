#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awesome_ads_chitika_json'
wp option delete 'awesome_ads_users_chitika'
wp option delete 'awesome_ads_google_json'
wp option delete 'awesome_ads_users_google'
wp option delete 'awesome-ads-networks'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'awesome_ads_users_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_json'"

