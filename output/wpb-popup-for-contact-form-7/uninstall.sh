#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpb_pcf_installed'
wp option delete 'wpb_pcf_lite_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu-item-cf7_popup_trigger'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu-item-cf7_popup_trigger'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu-item-cf7_popup_trigger'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu-item-cf7_popup_trigger'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpb_pcf_pro_discount_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpb_pcf_pro_discount_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpb_pcf_pro_discount_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpb_pcf_pro_discount_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpb_pcf_form_popup_suggestion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpb_pcf_form_popup_suggestion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpb_pcf_form_popup_suggestion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpb_pcf_form_popup_suggestion'"
