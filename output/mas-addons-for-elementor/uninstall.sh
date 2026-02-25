#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'job_manager_job_dashboard_page_id'
wp option delete 'job_manager_google_maps_api_key'
wp option delete 'job_manager_jobs_page_id'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elementor_%'"
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'mas_meta_box_errors'

# Delete Transients
wp transient delete 'jetpack-portfolio-count-cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mas_menu_item_icon_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mas_menu_item_icon_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mas_menu_item_icon_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mas_menu_item_icon_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_total_stock_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_total_stock_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_total_stock_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_total_stock_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_portfolio_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_portfolio_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_portfolio_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_portfolio_image_gallery'"
