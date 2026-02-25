#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iepa_mega_menu_tutorial_steps'
wp option delete 'iepa_tutorial_steps'
wp option delete 'recently_activated'
wp option delete 'icpa_settings'
wp option delete 'icpa_tax_settings'
wp option delete 'iepa_mm_woo_settings'
wp option delete 'iepamegabox_csettings'
wp option delete 'iepamega_settings'
wp option delete 'iepa_mm_font_family'
wp option delete 'iepa_mm_register_skin'
wp option delete 'iepamegabox_settings'
wp option delete 'iepa_mm_default_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp option delete '_ive_allow_file_generation'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_pay_page_id'
wp option delete 'woocommerce_shop_page_id'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'iepa_tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'iepa_tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'iepa_tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'iepa_tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icpa-tax-img-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icpa-tax-img-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icpa-tax-img-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icpa-tax-img-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iepamegamenu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iepamegamenu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iepamegamenu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iepamegamenu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'iepa_style_timestamp-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'iepa_style_timestamp-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'iepa_style_timestamp-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'iepa_style_timestamp-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iepa_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iepa_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iepa_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iepa_builder'"
