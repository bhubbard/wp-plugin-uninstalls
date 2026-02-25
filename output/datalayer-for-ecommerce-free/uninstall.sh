#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tracking_option_pro'
wp option delete 'options_tracking_option_free'
wp option delete 'migrate_datalayer_for_woocommerce'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'active_sitewide_plugins'

