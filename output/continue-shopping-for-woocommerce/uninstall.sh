#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'hpy_cs_destination'
wp option delete 'hpy_cs_custom_link'
wp option delete 'hpy_cs_custom_text'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_permalinks'
wp option delete 'hpy_cs_empty_cart_notice'
wp option delete 'hpy_cs_empty_cart_text'
wp option delete 'hpy_cs_permanent_cart_notice'
wp option delete 'hpy_cs_trigger_on_update'
wp option delete 'hpy_cs_settings'

# Delete Transients
wp transient delete 'recent_cat'

