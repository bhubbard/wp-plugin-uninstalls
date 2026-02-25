#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_webmoney_last_settings_update_version'
wp option delete 'woocommerce_webmoney_settings'

