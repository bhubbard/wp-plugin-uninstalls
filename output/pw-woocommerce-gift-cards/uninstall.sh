#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pwgc_hide_paypal_ipn_pdt_bug_notice'
wp option delete 'hide_pimwick_menu'
wp option delete 'pw_gift_card_designs_free'
wp option delete 'woocommerce_email_text_color'
wp option delete 'woocommerce_email_body_background_color'
wp option delete 'pwgc_blocks_hide_redeem_form'
wp option delete 'pwgc_before_add_to_cart_quantity_theme_fix'
wp option delete 'pwgc_format_prices'
wp option delete 'pwgc_use_wc_transactional_emails'
wp option delete 'pwgc_send_when_processing'
wp option delete 'pwgc_before_add_to_cart_currency_conversion_fix'
wp option delete 'pwgc_autocomplete_gift_card_orders'
wp option delete 'woocommerce_currency'
wp option delete 'pwgc_allow_gift_card_purchasing'
wp option delete 'pwgc_database_version'
wp option delete 'woocommerce_paypal_settings'
wp option delete 'pwgc_hide_partner_message'
wp option delete 'woocommerce_email_background_color'
wp option delete 'woocommerce_email_base_color'
wp option delete 'pwgc_redeem_cart_location'
wp option delete 'pwgc_redeem_checkout_location'
wp option delete 'woocommerce_email_footer_text'

# Clear Cron Jobs
wp cron event delete 'pw_gift_cards_recipient_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'card_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'card_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'card_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'card_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wmc_order_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wmc_order_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wmc_order_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wmc_order_info'"
