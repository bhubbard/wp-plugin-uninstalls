#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_easycredit_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'rewrite_rules'
wp option delete 'woocommerce_easycredit_infopage_page_id'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'easycredit-settings-checked'
wp transient delete 'woocommerce_cache_excluded_uris'

