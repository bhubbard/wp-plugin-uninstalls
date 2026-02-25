#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jetpack_protect_active'
wp option delete 'jetpack_offline_mode'
wp option delete 'wpcom_public_coming_soon'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'qlwcdc_add_to_cart'
wp option delete 'qlwcdc_add_to_cart_redirect_page'
wp option delete 'qlwcdc_wcd_imported2'
wp option delete 'direct_checkout_pro_enabled'
wp option delete 'direct_checkout_enabled'
wp option delete 'direct_checkout_pro_cart_redirect_url'
wp option delete 'direct_checkout_cart_redirect_url'
wp option delete 'qlwcdc_add_to_cart_redirect_url'
wp option delete 'direct_checkout_cart_button_text'
wp option delete 'qlwcdc_add_product_text'
wp option delete 'qlwcdc_add_product_text_content'
wp option delete 'qlwcdc_add_archive_text'
wp option delete 'qlwcdc_add_archive_text_content'
wp option delete 'qlwcdc_add_archive_text_in'
wp option delete 'qlwcdc_wcd_imported'
wp option delete 'qlwcdc_add_product_quick_purchase_class'
wp option delete 'qlwcdc_add_product_quick_purchase_text'
wp option delete 'qlwcdc_remove_checkout_privacy_policy_text'
wp option delete 'qlwcdc_remove_checkout_terms_and_conditions'
wp option delete 'qlwcdc_remove_checkout_fields'
wp option delete 'qlwcdc_remove_checkout_order_comments'
wp option delete 'qlwcdc_remove_checkout_shipping_address'
wp option delete 'qlwcdc_add_to_cart_link'
wp option delete 'qlwcdc_add_to_cart_message'
wp option delete 'qlwcdc_replace_cart_url'
wp option delete 'qlwcdc_replace_cart_url_custom'

# Delete Transients
wp transient delete 'jetpack_is_single_user'
wp transient delete 'quadlayers_news_feed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ql_plugin_feedback_%' OR option_name LIKE '_site_transient_ql_plugin_feedback_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_direct_checkout_pro_cart_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_direct_checkout_pro_cart_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_direct_checkout_pro_cart_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_direct_checkout_pro_cart_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qlwcdc_add_product_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qlwcdc_add_product_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qlwcdc_add_product_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qlwcdc_add_product_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qlwcdc_add_product_text_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qlwcdc_add_product_text_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qlwcdc_add_product_text_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qlwcdc_add_product_text_content'"
