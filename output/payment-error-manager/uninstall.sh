#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pemanager_settings'
wp option delete 'woocommerce_paystack_settings'

