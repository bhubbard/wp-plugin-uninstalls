#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sale_booster_settings_primary_bg_color'
wp option delete 'sale_booster_settings_secondary_bg_color'
wp option delete 'sale_booster_settings_topbar_text_color'
wp option delete 'sale_booster_settings_countdown_bg_color'
wp option delete 'sale_booster_settings_countdown_timer_color'
wp option delete 'sale_booster_settings_countdown_text_color'
wp option delete 'sale_booster_settings_stock_color'
wp option delete 'home_page_exit_popup'
wp option delete 'home_page_exit_custom_popup'
wp option delete 'home_page_banner_below_select'
wp option delete 'home_page_banner_below'
wp option delete 'home_page_banner_below_link'
wp option delete 'home_page_banner_above_footer_select'
wp option delete 'home_page_banner_above_footer'
wp option delete 'home_page_banner_above_footer_link'
wp option delete 'corner_page_select'
wp option delete 'home_page_corner_ad'
wp option delete 'home_page_corner_ad_link'
wp option delete 'home_corner_ad_position'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_booster_remove_cart_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_booster_remove_cart_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_booster_remove_cart_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_booster_remove_cart_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_booster_cart_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_booster_cart_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_booster_cart_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_booster_cart_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_booster_hide_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_booster_hide_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_booster_hide_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_booster_hide_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_booster_discount_timer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_booster_discount_timer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_booster_discount_timer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_booster_discount_timer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_booster_expire_date_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_booster_expire_date_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_booster_expire_date_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_booster_expire_date_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_booster_exit_popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_booster_exit_popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_booster_exit_popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_booster_exit_popup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_booster_exit_custom_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_booster_exit_custom_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_booster_exit_custom_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_booster_exit_custom_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_booster_user_based_expire_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_booster_user_based_expire_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_booster_user_based_expire_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_booster_user_based_expire_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_booster_stock_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_booster_stock_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_booster_stock_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_booster_stock_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_booster_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_booster_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_booster_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_booster_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_booster_hide_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_booster_hide_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_booster_hide_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_booster_hide_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_booster_expaire_date_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_booster_expaire_date_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_booster_expaire_date_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_booster_expaire_date_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_booster_inquire_us'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_booster_inquire_us'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_booster_inquire_us'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_booster_inquire_us'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_booster_inquire_us_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_booster_inquire_us_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_booster_inquire_us_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_booster_inquire_us_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_booster_inquire_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_booster_inquire_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_booster_inquire_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_booster_inquire_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_booster_inquire_us_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_booster_inquire_us_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_booster_inquire_us_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_booster_inquire_us_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_booster_inquire_us_custom_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_booster_inquire_us_custom_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_booster_inquire_us_custom_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_booster_inquire_us_custom_html'"
