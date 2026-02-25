#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ext_cst_status'
wp option delete 'ext_cst_label'
wp option delete 'ext_cst_label_billing'
wp option delete 'ext_cst_amount_type'
wp option delete 'ext_cst_amount'
wp option delete 'ext_cst_label_css'
wp option delete 'ext_cst_inc_ship_costs'
wp option delete 'ext_cst_inc_tax'
wp option delete 'ext_cst_extra'
wp option delete 'ext_cst_auto_checked'
wp option delete 'woocommerce_tax_total_display'

