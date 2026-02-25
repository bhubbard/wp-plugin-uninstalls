#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flizpay_rewrite_rules_flushed'
wp option delete 'woocommerce_flizpay_settings'

# Delete Transients
wp transient delete 'flizpay_cashback_transient'
wp transient delete 'flizpay_transient'

