#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'popularis_extra_active_time'
wp option delete 'popularis_extra_review_dismiss'
wp option delete 'popularis_extra_maybe_later'
wp option delete 'popularis_extra_active_pro_time'
wp option delete 'popularis_extra_active_pro_time_verse'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'
wp option delete '_wc_needs_pages'
wp option delete 'woocommerce_single_image_width'
wp option delete 'woocommerce_thumbnail_image_width'
wp option delete 'woocommerce_thumbnail_cropping'
wp option delete 'woocommerce_thumbnail_cropping_custom_width'
wp option delete 'woocommerce_thumbnail_cropping_custom_height'
wp option delete 'elementor_container_width'
wp option delete 'elementor_experiment-container'
wp option delete 'popularis_wizard'
wp option delete 'automatic_2nd_notice'
wp option delete '2nd_notice'
wp option delete 'popularis_plugin_do_activation_redirect'

# Delete Transients
wp transient delete '_wc_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'add_second_notice'

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
