#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_woo_catcbll_version'
wp option delete '_woo_catcbll_all_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcatcbll_wcatc_atc_btn_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcatcbll_wcatc_atc_btn_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcatcbll_wcatc_atc_btn_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcatcbll_wcatc_atc_btn_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcatcbll_wcatc_atc_btn_act'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcatcbll_wcatc_atc_btn_act'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcatcbll_wcatc_atc_btn_act'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcatcbll_wcatc_atc_btn_act'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_catcbll_btn_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_catcbll_btn_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_catcbll_btn_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_catcbll_btn_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_catcbll_btn_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_catcbll_btn_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_catcbll_btn_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_catcbll_btn_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_catcbll_more_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_catcbll_more_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_catcbll_more_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_catcbll_more_info'"
