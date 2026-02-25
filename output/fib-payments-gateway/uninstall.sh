#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fibpg_payment_gateway_page_id'
wp option delete 'fibpg_base_url'
wp option delete 'fibpg_client_id'
wp option delete 'fibpg_client_secret'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fib_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fib_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fib_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fib_payment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fib_qr_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fib_qr_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fib_qr_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fib_qr_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fib_business_app_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fib_business_app_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fib_business_app_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fib_business_app_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fib_corporate_app_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fib_corporate_app_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fib_corporate_app_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fib_corporate_app_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fib_personal_app_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fib_personal_app_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fib_personal_app_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fib_personal_app_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fib_readable_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fib_readable_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fib_readable_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fib_readable_code'"
