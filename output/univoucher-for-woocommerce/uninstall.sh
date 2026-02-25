#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'univoucher_wc_alchemy_api_key'
wp option delete 'univoucher_wc_show_on_demand_limit'
wp option delete 'univoucher_wc_database_key_backup_confirmed'
wp option delete 'univoucher_wc_wallet_private_key'
wp option delete 'univoucher_wc_wallet_public_key'
wp option delete 'univoucher_wc_show_in_order_details'
wp option delete 'univoucher_wc_cards_display_position'
wp option delete 'univoucher_wc_auto_complete_orders'
wp option delete 'univoucher_wc_send_email_cards'
wp option delete 'univoucher_wc_send_email_only_fully_assigned'
wp option delete 'univoucher_wc_email_subject'
wp option delete 'univoucher_wc_email_template'
wp option delete 'univoucher_wc_auto_create_backordered_cards'
wp option delete 'univoucher_wc_show_unassigned_notice'
wp option delete 'univoucher_wc_unassigned_notice_text'
wp option delete 'univoucher_wc_on_demand_order_limit'
wp option delete 'univoucher_wc_on_demand_error_message'
wp option delete 'univoucher_wc_on_demand_cart_limit'
wp option delete 'univoucher_wc_lmfwc_integration'
wp option delete 'univoucher_wc_lmfwc_license_key_template'
wp option delete 'univoucher_wc_lmfwc_show_abandoned_date'
wp option delete 'univoucher_wc_lmfwc_include_in_all_licenses'
wp option delete 'univoucher_wc_title_template'
wp option delete 'univoucher_wc_short_description_template'
wp option delete 'univoucher_wc_description_template'
wp option delete 'univoucher_wc_image_template'
wp option delete 'univoucher_wc_image_show_amount_with_symbol'
wp option delete 'univoucher_wc_image_show_amount'
wp option delete 'univoucher_wc_image_show_token_symbol'
wp option delete 'univoucher_wc_image_show_network_name'
wp option delete 'univoucher_wc_image_show_token_logo'
wp option delete 'univoucher_wc_image_show_network_logo'
wp option delete 'univoucher_wc_image_amount_with_symbol_font'
wp option delete 'univoucher_wc_image_amount_with_symbol_size'
wp option delete 'univoucher_wc_image_amount_with_symbol_color'
wp option delete 'univoucher_wc_image_amount_with_symbol_align'
wp option delete 'univoucher_wc_image_amount_with_symbol_x'
wp option delete 'univoucher_wc_image_amount_with_symbol_y'
wp option delete 'univoucher_wc_image_amount_font'
wp option delete 'univoucher_wc_image_amount_size'
wp option delete 'univoucher_wc_image_amount_color'
wp option delete 'univoucher_wc_image_amount_align'
wp option delete 'univoucher_wc_image_amount_x'
wp option delete 'univoucher_wc_image_amount_y'
wp option delete 'univoucher_wc_image_token_symbol_font'
wp option delete 'univoucher_wc_image_token_symbol_size'
wp option delete 'univoucher_wc_image_token_symbol_color'
wp option delete 'univoucher_wc_image_token_symbol_align'
wp option delete 'univoucher_wc_image_token_symbol_x'
wp option delete 'univoucher_wc_image_token_symbol_y'
wp option delete 'univoucher_wc_image_network_name_font'
wp option delete 'univoucher_wc_image_network_name_size'
wp option delete 'univoucher_wc_image_network_name_color'
wp option delete 'univoucher_wc_image_network_name_align'
wp option delete 'univoucher_wc_image_network_name_x'
wp option delete 'univoucher_wc_image_network_name_y'
wp option delete 'univoucher_wc_image_logo_height'
wp option delete 'univoucher_wc_image_logo_x'
wp option delete 'univoucher_wc_image_logo_y'
wp option delete 'univoucher_wc_image_token_height'
wp option delete 'univoucher_wc_image_token_x'
wp option delete 'univoucher_wc_image_token_y'
wp option delete 'univoucher_wc_db_version'
wp option delete 'univoucher_wc_version'

# Delete Transients
wp transient delete 'univoucher_scan_total_orders'
wp transient delete 'univoucher_last_expiration_check'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_univoucher_callback_auth_%' OR option_name LIKE '_site_transient_univoucher_callback_auth_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_needs_processing' OR option_name LIKE '_site_transient_%_needs_processing'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_univoucher_promo_callback_auth_%' OR option_name LIKE '_site_transient_univoucher_promo_callback_auth_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_univoucher_cancel_callback_auth_%' OR option_name LIKE '_site_transient_univoucher_cancel_callback_auth_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_univoucher_promo_callback_context_%' OR option_name LIKE '_site_transient_univoucher_promo_callback_context_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_univoucher_cancel_callback_context_%' OR option_name LIKE '_site_transient_univoucher_cancel_callback_context_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_univoucher_token_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_univoucher_token_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_univoucher_token_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_univoucher_token_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_univoucher_network'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_univoucher_network'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_univoucher_network'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_univoucher_network'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_univoucher_card_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_univoucher_card_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_univoucher_card_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_univoucher_card_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_univoucher_token_decimals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_univoucher_token_decimals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_univoucher_token_decimals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_univoucher_token_decimals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_univoucher_token_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_univoucher_token_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_univoucher_token_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_univoucher_token_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'univoucher_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'univoucher_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'univoucher_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'univoucher_dismissed_notices'"
