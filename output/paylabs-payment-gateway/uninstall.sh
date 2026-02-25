#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_paylabs_settings'
wp option delete 'woocommerce_paylabs_h5_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paymentType'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paymentType'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paymentType'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paymentType'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'va_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'va_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'va_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'va_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qr_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qr_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qr_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qr_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qr_code_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qr_code_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qr_code_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qr_code_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewallet_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewallet_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewallet_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewallet_link'"
