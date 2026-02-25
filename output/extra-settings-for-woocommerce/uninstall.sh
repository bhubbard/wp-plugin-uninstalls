#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eswc_first_activate'
wp option delete 'eswc_settingz'
wp option delete 'active_sitewide_plugins'
wp option delete 'eswc_url_before_login'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'eswc_dismiss_notice'

