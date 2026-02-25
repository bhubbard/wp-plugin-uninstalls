#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ppc_product_type'
wp option delete 'ppc_promotion_label'
wp option delete 'ppc_selected_category'
wp option delete 'ppc_order_by'
wp option delete 'ppc_order_sorting'
wp option delete 'ppc_columns_count'
wp option delete 'ppc_product_limit'

