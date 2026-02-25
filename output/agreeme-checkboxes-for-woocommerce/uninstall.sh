#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'agrwc_enabled'
wp option delete 'agrwc_checkboxes_data'
wp option delete 'active_sitewide_plugins'
wp option delete 'agrwc_buttonclasses'
wp option delete 'agrwc_formclasses'
wp option delete 'agrwc_alertmsg'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"
wp option delete 'wc_price_based_country_version'
wp option delete '_oga_wppbc_countries_groups'
wp option delete 'woocommerce_version'

# Delete Transients
wp transient delete 'agrwc_unistall'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_agrwc_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_agrwc_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_agrwc_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_agrwc_%'"
