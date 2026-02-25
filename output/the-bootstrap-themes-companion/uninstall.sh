#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'the_bootstrap_themes_companion_do_activation_redirect'
wp option delete 'txt_image_url'
wp option delete 'image_link'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbtc_facebook_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbtc_facebook_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbtc_facebook_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbtc_facebook_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbtc_instagram_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbtc_instagram_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbtc_instagram_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbtc_instagram_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbtc_twitter_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbtc_twitter_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbtc_twitter_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbtc_twitter_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbtc_linkedIn_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbtc_linkedIn_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbtc_linkedIn_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbtc_linkedIn_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbtc_designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbtc_designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbtc_designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbtc_designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbtc_cta_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbtc_cta_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbtc_cta_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbtc_cta_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbtc_cta_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbtc_cta_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbtc_cta_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbtc_cta_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbtc_actual_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbtc_actual_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbtc_actual_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbtc_actual_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbtc_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbtc_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbtc_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbtc_sale_price'"
