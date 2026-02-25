#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qode_quick_view_for_woocommerce_framework_permalinks'
wp option delete 'qode_quick_view_for_woocommerce_framework_permalinks_updated'
wp option delete 'woocommerce_shop_page_id'

