#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_2fa_settings_endpoint'
wp option delete 'woocommerce_queue_flush_rewrite_rules'

