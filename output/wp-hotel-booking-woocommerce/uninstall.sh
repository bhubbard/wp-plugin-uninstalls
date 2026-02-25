#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_tax_display_cart'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hb_wc_booking_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hb_wc_booking_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hb_wc_booking_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hb_wc_booking_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hb_woo_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hb_woo_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hb_woo_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hb_woo_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hb_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hb_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hb_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hb_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hb_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hb_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hb_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hb_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hb_woo_tax_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hb_woo_tax_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hb_woo_tax_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hb_woo_tax_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hb_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hb_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hb_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hb_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tp_hb_extra_room_respondent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tp_hb_extra_room_respondent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tp_hb_extra_room_respondent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tp_hb_extra_room_respondent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hb_num_of_rooms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hb_num_of_rooms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hb_num_of_rooms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hb_num_of_rooms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tp_hb_extra_room_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tp_hb_extra_room_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tp_hb_extra_room_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tp_hb_extra_room_required'"
