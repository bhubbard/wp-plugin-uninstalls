#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'admr_xtra_plugin_do_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'
wp option delete '_wc_needs_pages'
wp option delete 'woocommerce_single_image_width'
wp option delete 'woocommerce_thumbnail_image_width'
wp option delete 'woocommerce_thumbnail_cropping'
wp option delete 'woocommerce_thumbnail_cropping_custom_width'
wp option delete 'woocommerce_thumbnail_cropping_custom_height'
wp option delete 'elementor_disable_color_schemes'
wp option delete 'elementor_disable_typography_schemes'
wp option delete 'elementor_container_width'

# Delete Transients
wp transient delete '_wc_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_menu_item_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_menu_item_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_menu_item_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_menu_item_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'companyname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'companyname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'companyname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'companyname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'possition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'possition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'possition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'possition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facebooklink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facebooklink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facebooklink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facebooklink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitterlink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitterlink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitterlink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitterlink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instagramlink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instagramlink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instagramlink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instagramlink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkedinlink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkedinlink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkedinlink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkedinlink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pinterest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pinterest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pinterest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pinterest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pinterestlink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pinterestlink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pinterestlink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pinterestlink'"
