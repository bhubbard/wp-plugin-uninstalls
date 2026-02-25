#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_modena_slice_settings'
wp option delete 'woocommerce_modena_credit_settings'
wp option delete 'woocommerce_modena_business_leasing_settings'
wp option delete 'woocommerce_modena_click_settings'
wp option delete 'modena_plugin_version'

