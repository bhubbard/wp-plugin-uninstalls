#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buy_now_woo_customize'
wp option delete 'buy_now_woo_button_color'
wp option delete 'buy_now_woo_button_bgcolor'
wp option delete 'buy_now_woo_button_border_color'
wp option delete 'buy_now_woo_button_hover_color'
wp option delete 'buy_now_woo_button_hover_bgcolor'
wp option delete 'buy_now_woo_button_hover_border_color'
wp option delete 'buy_now_woo_button_padding'
wp option delete 'buy_now_woo_button_margin'
wp option delete 'buy_now_woo_button_width'
wp option delete 'buy_now_woo_button_height'
wp option delete 'buy_now_woo_button_additional_css'
wp option delete 'buy_now_woo_single_catelog_position'
wp option delete 'buy_now_woo_single_product_position'
wp option delete 'buy_now_woo_single_product_enable'
wp option delete 'buy_now_woo_redirect'
wp option delete 'buy_now_woo_single_product_button'
wp option delete 'buy_now_woo_single_product_remove_quantity'
wp option delete 'buy_now_woo_single_product_reset_cart'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rdn_fetch_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cdx-wpgs-plugin-info-%' OR option_name LIKE '_site_transient_cdx-wpgs-plugin-info-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rn_last_notification_%' OR option_name LIKE '_site_transient_rn_last_notification_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpi_check_ran_%' OR option_name LIKE '_site_transient_wpi_check_ran_%'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rn_dismissed'"
