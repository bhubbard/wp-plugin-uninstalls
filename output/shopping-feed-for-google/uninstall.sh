#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_gsf_shop_secret'
wp option delete 'wp_gsf_auth_id'
wp option delete 'wp_gsf_settings_meta'
wp option delete 'woocommerce_api_enabled'

