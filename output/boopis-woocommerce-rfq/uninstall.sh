#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'boopis_rfq_page_id'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'boopis_rfq_replace_price'
wp option delete 'boopis_rfq_quote_trigger'
wp option delete 'boopis_rfq_tag_trigger_value'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_email_header_image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_boopis_rfq_terms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_boopis_rfq_terms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_boopis_rfq_terms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_boopis_rfq_terms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_boopis_rfq_expiration_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_boopis_rfq_expiration_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_boopis_rfq_expiration_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_boopis_rfq_expiration_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_persistent_quote'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_persistent_quote'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_persistent_quote'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_persistent_quote'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_purchase_note'"
