#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ns_loop_image'
wp option delete 'ns_single_product_image'
wp option delete 'ns_option_single_image_height'
wp option delete 'ns_option_single_image_width'
wp option delete 'ns_option_image_height'
wp option delete 'ns_option_image_width'
wp option delete 'ns_option_single_image_heigth'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ns_option_badge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ns_option_badge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ns_option_badge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ns_option_badge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ns_option_badge_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ns_option_badge_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ns_option_badge_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ns_option_badge_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ns_option_badge_shape'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ns_option_badge_shape'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ns_option_badge_shape'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ns_option_badge_shape'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ns_option_badge_single_product_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ns_option_badge_single_product_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ns_option_badge_single_product_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ns_option_badge_single_product_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ns_option_badge_sizeText'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ns_option_badge_sizeText'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ns_option_badge_sizeText'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ns_option_badge_sizeText'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ns_option_badge_size_shape'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ns_option_badge_size_shape'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ns_option_badge_size_shape'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ns_option_badge_size_shape'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ns_option_badge_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ns_option_badge_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ns_option_badge_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ns_option_badge_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ns_single_width_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ns_single_width_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ns_single_width_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ns_single_width_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ns_single_height_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ns_single_height_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ns_single_height_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ns_single_height_image'"
