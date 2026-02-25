#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wc_ecpayinvoice_active_model'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_payment_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_payment_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_payment_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_payment_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BankCode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BankCode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BankCode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BankCode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vAccount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vAccount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vAccount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vAccount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ExpireDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ExpireDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ExpireDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ExpireDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'PaymentNo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'PaymentNo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'PaymentNo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'PaymentNo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'card4no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'card4no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'card4no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'card4no'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_total_success_times'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_total_success_times'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_total_success_times'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_total_success_times'"
