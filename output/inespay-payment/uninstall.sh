#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inespay_migration_notice'
wp option delete 'inespay_version'
wp option delete 'woocommerce_inespay_settings'
wp option delete 'woocommerce_my_custom_gateway_settings'
wp option delete 'woocommerce_force_ssl_checkout'

