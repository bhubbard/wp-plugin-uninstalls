#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpb_psc_installed'
wp option delete 'wpb_psc_lite_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_psc_size_table'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_psc_size_table'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_psc_size_table'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_psc_size_table'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_psc_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_psc_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_psc_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_psc_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_psc_size_chart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_psc_size_chart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_psc_size_chart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_psc_size_chart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_psc_set_for_all_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_psc_set_for_all_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_psc_set_for_all_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_psc_set_for_all_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_psc__btn_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_psc__btn_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_psc__btn_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_psc__btn_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_psc_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_psc_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_psc_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_psc_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_psc__product_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_psc__product_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_psc__product_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_psc__product_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_psc__tab_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_psc__tab_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_psc__tab_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_psc__tab_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpb_psc_pro_discount_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpb_psc_pro_discount_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpb_psc_pro_discount_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpb_psc_pro_discount_dismissed'"
