#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_colors'
wp option delete 'woocommerce_colors_css'
wp option delete 'woocommerce_frontend_css_colors'
wp option delete 'woocommerce_admin_notices'

