#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ppsas_general_settings'
wp option delete 'ppsas_popup_settings'
wp option delete 'ppsas_page_option_settings'
wp option delete 'ppsas_product_option_settings'
wp option delete 'ppsas_global_options'
wp option delete 'woocommerce_shop_page_id'

