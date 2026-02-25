#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_pay4pay_admin_footer_text_rated'
wp option delete 'woocommerce_default_gateway'

