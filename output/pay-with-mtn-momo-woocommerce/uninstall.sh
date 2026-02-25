#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_momopay_settings'
wp option delete 'wc_momopay_adv_data'

