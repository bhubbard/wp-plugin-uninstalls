#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'metorik_importing_currently'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'metorik_cart_settings'
wp option delete 'metorik_checkout_url'
wp option delete 'metorik_show_activation_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_metorik_cart_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_metorik_cart_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_metorik_cart_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_metorik_cart_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_metorik_customer_email_opt_out'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_metorik_customer_email_opt_out'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_metorik_customer_email_opt_out'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_metorik_customer_email_opt_out'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_metorik_pending_recovery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_metorik_pending_recovery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_metorik_pending_recovery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_metorik_pending_recovery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_metorik_engage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_metorik_engage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_metorik_engage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_metorik_engage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_metorik_source_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_metorik_source_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_metorik_source_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_metorik_source_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_metorik_referer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_metorik_referer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_metorik_referer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_metorik_referer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_metorik_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_metorik_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_metorik_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_metorik_%'"
