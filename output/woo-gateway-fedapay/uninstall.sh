#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'wc_fedapay_db_version'
wp option delete 'wc_fedapay_gateway_bootstrap_warning_message'
wp option delete 'wc_fedapay_gateway_bootstrap_warning_message_dismissed'

