#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blpaczka_sandbox_mode'
wp option delete 'blpaczka_auth_login'
wp option delete 'blpaczka_auth_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'blpaczka_auto_prepaid_insurance'
wp option delete 'blpaczka_fixed_prepaid_insurance'
wp option delete 'blpaczka_auto_cod_insurance'
wp option delete 'blpaczka_fixed_cod_insurance'
wp option delete 'blpaczka_templates'
wp option delete 'blpaczka_package_courier'
wp option delete 'blpaczka_package_weight'
wp option delete 'blpaczka_package_length'
wp option delete 'blpaczka_package_width'
wp option delete 'blpaczka_package_height'
wp option delete 'blpaczka_package_content'
wp option delete 'blpaczka_package_sortable'
wp option delete 'blpaczka_package_no_pickup'
wp option delete 'blpaczka_package_pickup_ready_time'
wp option delete 'blpaczka_package_pickup_close_time'
wp option delete 'blpaczka_sender_name'
wp option delete 'blpaczka_sender_company'
wp option delete 'blpaczka_sender_email'
wp option delete 'blpaczka_sender_street'
wp option delete 'blpaczka_sender_house_no'
wp option delete 'blpaczka_sender_locum_no'
wp option delete 'blpaczka_sender_postal'
wp option delete 'blpaczka_sender_city'
wp option delete 'blpaczka_sender_phone'
wp option delete 'blpaczka_sender_account'
wp option delete 'blpaczka_package_payment'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blpaczka_selected_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blpaczka_selected_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blpaczka_selected_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blpaczka_selected_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BLPACZKA_blpaczka_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BLPACZKA_blpaczka_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BLPACZKA_blpaczka_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BLPACZKA_blpaczka_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BLPACZKA_blpaczka_waybill_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BLPACZKA_blpaczka_waybill_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BLPACZKA_blpaczka_waybill_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BLPACZKA_blpaczka_waybill_link'"
