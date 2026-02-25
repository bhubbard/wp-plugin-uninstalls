#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elex_bep_filter_checkbox_data'
wp option delete 'eh_bulk_edit_table_row'
wp option delete 'xa_regex_error'
wp option delete 'eh_bulk_edit_choosed_variation_id'
wp option delete 'bulk_edit_filtered_product_ids_for_select_unselect'
wp option delete 'eh_bulk_edit_choosed_product_id'
wp option delete 'xa_bulk_selected_ids'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again'"
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'eh_pricing_discount_product_price_user_role'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
