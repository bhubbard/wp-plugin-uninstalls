#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maakapay_test'
wp option delete 'maakapay_live'
wp option delete 'maakapay_mode'
wp option delete 'maakapay_admin_mail'
wp option delete 'woocommerce_maakapay_for_woocommerce_checkout_settings'

