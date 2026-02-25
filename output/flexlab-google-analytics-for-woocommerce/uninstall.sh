#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_google_analytics__api_secret'
wp option delete 'woocommerce_google_analytics__measurement_id'
wp option delete 'woocommerce_google_analytics__use_google_tag'

