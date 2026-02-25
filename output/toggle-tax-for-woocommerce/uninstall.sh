#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gt_tax_btn_state'
wp option delete 'gt_tax_text'
wp option delete 'gt_tax_btn_text'
wp option delete 'gt_tax_btn_toggle_text'
wp option delete 'gt_tax_bg_color'
wp option delete 'gt_tax_text_color'
wp option delete 'woocommerce_tax_display_shop'

