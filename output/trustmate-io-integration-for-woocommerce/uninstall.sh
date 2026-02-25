#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trustmate_invitations_enabled'
wp option delete 'trustmate_category_path_mode'
wp option delete 'trustmate_account_uuid'
wp option delete 'trustmate_account_language_uuids'
wp option delete 'trustmate_widget_muskrat'
wp option delete 'trustmate_widget_muskrat2'
wp option delete 'trustmate_widget_bee'
wp option delete 'trustmate_widget_lemur'
wp option delete 'trustmate_widget_product_ferret'
wp option delete 'trustmate_widget_product_ferret2'
wp option delete 'trustmate_widget_hydra'
wp option delete 'trustmate_widget_gorilla'
wp option delete 'trustmate_widget_badger'
wp option delete 'trustmate_widget_badger2'
wp option delete 'trustmate_widget_alpaca'
wp option delete 'trustmate_widget_ferret'
wp option delete 'trustmate_widget_ferret2'
wp option delete 'trustmate_widget_chupacabra'
wp option delete 'trustmate_widget_hornet'
wp option delete 'trustmate_widget_multihornet'
wp option delete 'trustmate_widget_owl'
wp option delete 'trustmate_instant_review'
wp option delete 'trustmate_base_url'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'trustmate_base_widget_url'
wp option delete 'trustmate_partner_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rank_math_gtin_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rank_math_gtin_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rank_math_gtin_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rank_math_gtin_code'"
