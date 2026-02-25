#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_pan_api_url'
wp option delete 'wc_pan_api_key'
wp option delete 'wc_pan_min_cart_total'
wp option delete 'wc_pan_custom_css'
wp option delete 'wc_pan_shortcode_name'

