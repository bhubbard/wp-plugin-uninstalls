#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ratcw_disable_cart_page'
wp option delete 'ratcw_disable_checkout_page'
wp option delete 'ratcw_add_to_cart_message_text_color'
wp option delete 'ratcw_add_to_cart_message_background_color'
wp option delete 'ratcw_add_to_cart_message_text_alignment'
wp option delete 'ratcw_add_to_cart_message_text_padding'
wp option delete 'ratcw_add_to_cart_message_text_font_size'
wp option delete 'ratcw_login_reg_page_url'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'ratcw_login_reg_button_text'
wp option delete 'ratcw_price_message_text_color'
wp option delete 'ratcw_price_message_background_color'
wp option delete 'ratcw_price_message_text_alignment'
wp option delete 'ratcw_price_message_text_padding'
wp option delete 'ratcw_price_message_text_font_size'
wp option delete 'ratcw_cart_checkout_redirect_url'
wp option delete 'ratcw_product_ofs_message'
wp option delete 'ratcw_product_obo_message'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ratcw_remove_cart_button_for'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ratcw_remove_cart_button_for'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ratcw_remove_cart_button_for'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ratcw_remove_cart_button_for'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ratcw_show_login_btn_when_cart_button_hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ratcw_show_login_btn_when_cart_button_hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ratcw_show_login_btn_when_cart_button_hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ratcw_show_login_btn_when_cart_button_hidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ratcw_msg_instead_cart_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ratcw_msg_instead_cart_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ratcw_msg_instead_cart_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ratcw_msg_instead_cart_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ratcw_hide_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ratcw_hide_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ratcw_hide_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ratcw_hide_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ratcw_msg_instead_product_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ratcw_msg_instead_product_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ratcw_msg_instead_product_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ratcw_msg_instead_product_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ratcw_show_price_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ratcw_show_price_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ratcw_show_price_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ratcw_show_price_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ratcw_igne_noti'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ratcw_igne_noti'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ratcw_igne_noti'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ratcw_igne_noti'"
