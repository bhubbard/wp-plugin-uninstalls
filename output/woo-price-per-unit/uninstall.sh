#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_mcmp_ppu_free_db_version'
wp option delete '_mcmp_ppu_general_behaviour'
wp option delete '_mcmp_ppu_general'
wp option delete '_mcmp_ppu_single_page_behaviour'
wp option delete '_mcmp_ppu_single_page'
wp option delete '_mcmp_ppu_cart_show_sale_price'
wp option delete '_mcmp_ppu_delete_meta'
wp option delete '_mcmp_ppu_additional_text'
wp option delete '_mcmp_ppu_hide_sale_price'
wp option delete '_mcmp_ppu_var_prefix_text'
wp option delete '_mcmp_ppu_var_hide_max_price'
wp option delete '_mcmp_ppu_var_show_sale_price'
wp option delete '_mcmp_ppu_add_row_css'
wp option delete '_mcmp_ppu_cart_page'
wp option delete '_mcmp_ppu_recalc_text'
wp option delete '_mcmp_ppu_recalc_text_automatic_preposition'
wp option delete '_mcmp_ppu_recalc_text_options'
wp option delete '_mcmp_ppu_recalc_text_separate'
wp option delete '_mcmp_ppu_recalc_text_prefix'
wp option delete '_mcmp_ppu_disable_price_rounding'
wp option delete '_mcmp_ppu_recalc_per_units'
wp option delete '_mcmp_ppu_var_display_option_recalc'
wp option delete '_mcmp_ppu_var_display_option_recalc_forced'
wp option delete 'woocommerce_version'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_weight_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mcmp_ppu_general_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mcmp_ppu_general_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mcmp_ppu_general_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mcmp_ppu_general_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mcmp_ppu_single_page_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mcmp_ppu_single_page_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mcmp_ppu_single_page_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mcmp_ppu_single_page_override'"
