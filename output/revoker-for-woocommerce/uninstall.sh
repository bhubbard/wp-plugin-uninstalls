#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_store_phone'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'revoker_withdrawal_period'
wp option delete 'revoker_button_text'
wp option delete 'revoker_confirm_button_text'
wp option delete 'revoker_cancel_button_text'
wp option delete 'revoker_button_style'
wp option delete 'revoker_button_position'
wp option delete 'revoker_show_in_emails'
wp option delete 'revoker_send_confirmation'
wp option delete 'revoker_admin_notification'
wp option delete 'revoker_return_company'
wp option delete 'revoker_return_address'
wp option delete 'revoker_return_address_2'
wp option delete 'revoker_return_postcode'
wp option delete 'revoker_return_city'
wp option delete 'revoker_excluded_categories'
wp option delete 'revoker_excluded_products'
wp option delete 'revoker_exclude_downloaded'
wp option delete 'revoker_db_version'
wp option delete 'woocommerce_email_from_name'
wp option delete 'revoker_withdrawal_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'revoker_pro_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'revoker_pro_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'revoker_pro_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'revoker_pro_notice_dismissed'"
