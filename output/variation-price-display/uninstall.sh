#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'product_share_option'
wp option delete 'variation_price_display_option'
wp option delete 'variation_price_display_option_advanced'
wp option delete 'variation_price_display_license'
wp option delete 'vpd_price_types'
wp option delete 'vpd_from_before_min_price'
wp option delete 'vpd_up_to_before_max_price'
wp option delete 'vpd_custom_price_text'
wp option delete 'vpd_change_price'
wp option delete 'vpd_hide_default_price'
wp option delete 'vpd_hide_reset_link'
wp option delete 'vpd_format_sale_price'
wp option delete 'vpd_display_condition'
wp option delete 'vpd_display_variation_sku'
wp option delete 'vpd_display_discount_badge'
wp option delete 'vpd_disable_price_format_for_admin'
wp option delete 'vpd_license_key_text'
wp option delete 'wpx_notice_dismissed_date'

