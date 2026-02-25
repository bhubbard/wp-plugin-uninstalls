#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'activate_admin_dpd'
wp option delete 'wc_dpd_server'
wp option delete 'wc_dpd_print_username'
wp option delete 'wc_dpd_print_password'
wp option delete 'wc_dpd_print_sender_name'
wp option delete 'wc_dpd_print_sender_address'
wp option delete 'wc_dpd_print_sender_city'
wp option delete 'wc_dpd_print_sender_zipcode'
wp option delete 'wc_dpd_print_sender_country'
wp option delete 'wc_dpd_print_sender_contact'
wp option delete 'wc_dpd_print_sender_phone'
wp option delete 'wc_dpd_print_sender_email'
wp option delete 'woocommerce_weight_unit'
wp option delete 'wc_dpd_email_content'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Želim naručiti dostavnu službu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Želim naručiti dostavnu službu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Želim naručiti dostavnu službu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Želim naručiti dostavnu službu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_order_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_order_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_order_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_order_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_order_tracking_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_order_tracking_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_order_tracking_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_order_tracking_filename'"
