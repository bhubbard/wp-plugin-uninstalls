#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cat'
wp option delete 'background_color'
wp option delete 'add_to_cart_1_color'
wp option delete 'add_to_cart_2_color'
wp option delete 'view_1_color'
wp option delete 'view_2_color'
wp option delete 'product_title_color'
wp option delete 'font_color'
wp option delete 'num_prod'
wp option delete 'title_size'
wp option delete 'option_etc'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wct_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wct_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wct_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wct_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wct_facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wct_facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wct_facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wct_facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wct_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wct_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wct_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wct_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wct_linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wct_linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wct_linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wct_linkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wct_instagram'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wct_instagram'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wct_instagram'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wct_instagram'"
