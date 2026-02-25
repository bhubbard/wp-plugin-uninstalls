#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stackCommerceWidget_settings'
wp option delete 'stackCommerceWidget_general_options'
wp option delete 'stackCommerce_shortcode'

