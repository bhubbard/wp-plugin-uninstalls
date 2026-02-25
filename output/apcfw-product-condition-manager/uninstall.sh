#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apcmfw_product_condition_default'
wp option delete 'apcmfw_product_condition_show_on_shop'
wp option delete 'apcmfw_product_condition_shop_label'
wp option delete 'apcmfw_product_condition_single_label'
wp option delete 'apcmfw_product_condition_custom_css'

