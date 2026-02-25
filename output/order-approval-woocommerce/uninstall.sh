#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sg_oa_woo_manage_inventory'
wp option delete 'woocommerce_woa_gateway_settings'
wp option delete 'sg_enable_order_edit'
wp option delete 'woocommerce_email_footer_text'

