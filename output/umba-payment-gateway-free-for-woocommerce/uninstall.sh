#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Activated_WooCommerce_Umba'
wp option delete 'woocommerce_currency'
wp option delete 'umba_currency_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'umba_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'umba_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'umba_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'umba_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'umba_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'umba_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'umba_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'umba_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'umba_payment_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'umba_payment_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'umba_payment_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'umba_payment_reference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'umba_error_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'umba_error_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'umba_error_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'umba_error_type'"
