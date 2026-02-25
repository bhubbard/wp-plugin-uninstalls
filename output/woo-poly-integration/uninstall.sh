#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpi_wcpagecheck_passed'
wp option delete 'hyyan-wpi-flash-messages'
wp option delete 'woocommerce_email_footer_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'polylang'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_permalinks'
wp option delete 'wpi_version'
wp option delete 'woocommerce_checkout_privacy_policy_text'
wp option delete 'woocommerce_registration_privacy_policy_text'
wp option delete 'woocommerce_demo_store_notice'
wp option delete 'woocommerce_checkout_terms_and_conditions_checkbox_text'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_price_display_suffix'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_translation_porduct_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_translation_porduct_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_translation_porduct_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_translation_porduct_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_lang'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_point_to_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_point_to_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_point_to_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_point_to_variation'"
