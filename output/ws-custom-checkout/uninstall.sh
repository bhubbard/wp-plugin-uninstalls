#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'wsccp_options'

