#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awspn_show_on_order_and_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awspn_show_on_order_and_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awspn_show_on_order_and_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awspn_show_on_order_and_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awspn_product_price_note_separator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awspn_product_price_note_separator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awspn_product_price_note_separator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awspn_product_price_note_separator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awspn_product_price_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awspn_product_price_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awspn_product_price_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awspn_product_price_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awspn_excl_price_on_order_and_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awspn_excl_price_on_order_and_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awspn_excl_price_on_order_and_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awspn_excl_price_on_order_and_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awspn_excl_sep_on_order_and_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awspn_excl_sep_on_order_and_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awspn_excl_sep_on_order_and_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awspn_excl_sep_on_order_and_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awspn_product_price_note_oe_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awspn_product_price_note_oe_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awspn_product_price_note_oe_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awspn_product_price_note_oe_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awspn_product_price_note_oe_texts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awspn_product_price_note_oe_texts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awspn_product_price_note_oe_texts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awspn_product_price_note_oe_texts'"
