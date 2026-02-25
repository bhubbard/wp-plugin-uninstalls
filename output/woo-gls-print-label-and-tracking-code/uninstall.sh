#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'activate_admin'
wp option delete 'wc_gls_server'
wp option delete 'wc_gls_print_senderid'
wp option delete 'wc_gls_print_username'
wp option delete 'wc_gls_print_password'
wp option delete 'wc_gls_print_sender_name'
wp option delete 'wc_gls_print_sender_address'
wp option delete 'wc_gls_print_sender_city'
wp option delete 'wc_gls_print_sender_zipcode'
wp option delete 'wc_gls_print_sender_country'
wp option delete 'wc_gls_print_sender_contact'
wp option delete 'wc_gls_print_sender_phone'
wp option delete 'wc_gls_print_sender_email'
wp option delete 'wc_gls_enable_fds'
wp option delete 'wc_gls_print_contactid'
wp option delete 'wc_gls_email_content'
wp option delete 'woocommerce_weight_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Želim naručiti dostavnu službu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Želim naručiti dostavnu službu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Želim naručiti dostavnu službu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Želim naručiti dostavnu službu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gls_order_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gls_order_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gls_order_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gls_order_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gls_order_parcel_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gls_order_parcel_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gls_order_parcel_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gls_order_parcel_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gls_order_tracking_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gls_order_tracking_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gls_order_tracking_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gls_order_tracking_id'"
