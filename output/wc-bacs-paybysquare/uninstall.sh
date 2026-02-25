#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_bacs_paybysquare_limit_exceeded'
wp option delete 'woocommerce_bacs_settings'

