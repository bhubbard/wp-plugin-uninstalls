#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jarila_country'
wp option delete 'jarila_ml_market'
wp option delete 'jarila_ml_site_id'
wp option delete 'jarila_ml_border_color'
wp option delete 'jarila_ml_image_border_color'
wp option delete 'jarila_ml_text_size'
wp option delete 'jarila_ml_text_color'
wp option delete 'jarila_ml_text_bold'
wp option delete 'jarila_ml_price_size'
wp option delete 'jarila_ml_price_color'
wp option delete 'jarila_ml_price_bold'
wp option delete 'jarila_ga_ad1_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'jarila_ga_%'"
wp option delete 'jarila_ga_ad2_name'
wp option delete 'jarila_ga_ad3_name'
wp option delete 'jarila_ga_ad4_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jarila_ml_i_want_ads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jarila_ml_i_want_ads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jarila_ml_i_want_ads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jarila_ml_i_want_ads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jarila_ml_howmany_ads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jarila_ml_howmany_ads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jarila_ml_howmany_ads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jarila_ml_howmany_ads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jarila_ml_howmany_lines'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jarila_ml_howmany_lines'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jarila_ml_howmany_lines'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jarila_ml_howmany_lines'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jarila_ml_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jarila_ml_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jarila_ml_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jarila_ml_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jarila_ml_order_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jarila_ml_order_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jarila_ml_order_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jarila_ml_order_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jarila_ml_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jarila_ml_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jarila_ml_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jarila_ml_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jarila_ga_i_want_ads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jarila_ga_i_want_ads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jarila_ga_i_want_ads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jarila_ga_i_want_ads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jarila_ga_which_ad'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jarila_ga_which_ad'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jarila_ga_which_ad'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jarila_ga_which_ad'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jarila_ga_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jarila_ga_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jarila_ga_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jarila_ga_position'"
