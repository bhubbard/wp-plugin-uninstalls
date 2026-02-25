#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_db_version'
wp option delete 'ultimate_product_badge_for_woocommerce_do_activation_redirect'
wp option delete 'ultimate_product_badge_for_woocommerce'

