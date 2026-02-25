#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocf_settings'
wp option delete 'woocf_log'
wp option delete 'woocf_notice_toggled'
wp option delete 'woocommerce_demo_store'
wp option delete 'cloudflare_api_email'
wp option delete 'cloudflare_api_key'
wp option delete 'woocf_activated_on'
wp option delete 'woocommerce_version'

