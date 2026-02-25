#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'unzer_public_key'
wp option delete 'unzer_chargeback_order_status'
wp option delete 'unzer_captured_order_status'
wp option delete 'unzer_private_key'
wp option delete 'woocommerce_default_country'
wp option delete 'unzer_authorized_order_status'

