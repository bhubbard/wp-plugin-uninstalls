#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpb_js_google_fonts_subsets'
wp option delete 'woocommerce_cart_redirect_after_add'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpbforwpbakery_tmpl_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpbforwpbakery_tmpl_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpbforwpbakery_tmpl_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpbforwpbakery_tmpl_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpbforwpbakery_selectcategory_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpbforwpbakery_selectcategory_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpbforwpbakery_selectcategory_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpbforwpbakery_selectcategory_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_post_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_post_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_post_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_post_custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_shortcodes_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_shortcodes_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_shortcodes_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_shortcodes_custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_selectproduct_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_selectproduct_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_selectproduct_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_selectproduct_layout'"
