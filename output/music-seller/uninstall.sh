#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'music_seller_show_preview'
wp option delete 'music_seller_thankyou_page'
wp option delete 'music_seller_paypal_currency'
wp option delete 'music_seller_use_id3'
wp option delete 'music_seller_button_color_1'
wp option delete 'music_seller_button_color_2'
wp option delete 'music_seller_border_color'
wp option delete 'music_seller_button_color_1_hover'
wp option delete 'music_seller_button_color_2_hover'
wp option delete 'music_seller_border_color_hover'
wp option delete 'music_seller_paypal_account'
wp option delete 'music_seller_checkout_page'
wp option delete 'music_seller_cancel_page'
wp option delete 'music_seller_paypal_return_button_text'
wp option delete 'music_seller_paypal_sandbox'
wp option delete 'music_seller_attach_files'
wp option delete 'music_seller_email_delivery'
wp option delete 'music_sller_vat_percent'
wp option delete 'music_seller_email_delivery_subject'
wp option delete 'music_seller_email_delivery_text'
wp option delete 'music_seller_downloads_limit'
wp option delete 'music_seller_link_expiration'
wp option delete 'music_seller_file_title'
wp option delete 'music_seller_paypal_verify_transactions'
wp option delete 'music_seller_vat_percent'
wp option delete 'music_seller_paypal_language'
wp option delete 'music_seller_color_scheme'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mc_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mc_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mc_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mc_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mc_gross'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mc_gross'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mc_gross'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mc_gross'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'residence_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'residence_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'residence_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'residence_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'downloads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'downloads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'downloads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'downloads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_my_meta_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_my_meta_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_my_meta_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_my_meta_value_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'music_seller_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'music_seller_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'music_seller_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'music_seller_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'music_seller_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'music_seller_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'music_seller_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'music_seller_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'music_seller_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'music_seller_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'music_seller_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'music_seller_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'music_seller_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'music_seller_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'music_seller_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'music_seller_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'music_seller_preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'music_seller_preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'music_seller_preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'music_seller_preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'music_seller_wavs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'music_seller_wavs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'music_seller_wavs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'music_seller_wavs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'music_seller_order_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'music_seller_order_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'music_seller_order_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'music_seller_order_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_id'"
