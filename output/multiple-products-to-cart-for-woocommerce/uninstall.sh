#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wmc_ct_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mpcasc_code%'"
wp option delete 'wmc_sorted_columns'
wp option delete 'mpcasc_counter'
wp option delete 'wmc_redirect'
wp option delete 'wmc_button_text'
wp option delete 'wmc_missed_variation_text'
wp option delete 'wmc_empty_form_text'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'wmca_default_quantity'
wp option delete 'mpc_button_text_color'
wp option delete 'wmc_button_color'
wp option delete 'mpc_head_text_color'
wp option delete 'wmc_thead_back_color'
wp option delete 'mpc_protitle_color'
wp option delete 'mpc_protitle_font_size'
wp option delete 'mpc_protitle_bold_font'
wp option delete 'mpc_protitle_underline'
wp option delete 'mpc_image_size'
wp option delete 'wmca_inline_dropdown'
wp option delete 'mpca_rate_us'
wp option delete 'mpca_notify_pro'
wp option delete 'mpc_sddt_title_asc'
wp option delete 'mpc_sddt_title_desc'
wp option delete 'mpc_sddt_default'
wp option delete 'mpc_sddt_price_asc'
wp option delete 'mpc_sddt_price_desc'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'table_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'table_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'table_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'table_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
