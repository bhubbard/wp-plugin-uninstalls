#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'solace_extra_redirect_after_activation_option'
wp option delete 'elementor_disable_color_schemes'
wp option delete 'elementor_disable_typography_schemes'
wp option delete 'elementor_experiment-nested-elements'
wp option delete 'elementor_active_kit'
wp option delete 'solace_extra_import_zip_complete'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'solace_extra_deactivate_litespeed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'
wp option delete 'elementor_onboarded'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'solace_license_key'
wp option delete 'solace_license_status'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'solace_uploaded_image_id'
wp option delete 'solace_extra_widgets'
wp option delete 'elementor_cpt_support'
wp option delete 'medium_large_size_w'
wp option delete 'medium_large_size_h'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'thumbnails_cron_running'
wp transient delete 'unfinished_thumbnails'

# Clear Cron Jobs
wp cron event delete 'generate_thumbnails_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_post_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_post_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_post_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_post_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'solace_wp_importer_site_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'solace_wp_importer_site_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'solace_wp_importer_site_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'solace_wp_importer_site_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'solace_import_elementor_kit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'solace_import_elementor_kit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'solace_import_elementor_kit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'solace_import_elementor_kit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'solace_import_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'solace_import_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'solace_import_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'solace_import_pages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'solace_import_site_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'solace_import_site_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'solace_import_site_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'solace_import_site_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'solace_import_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'solace_import_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'solace_import_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'solace_import_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'solace_import_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'solace_import_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'solace_import_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'solace_import_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'solace_import_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'solace_import_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'solace_import_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'solace_import_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'solace_imported_term_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'solace_imported_term_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'solace_imported_term_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'solace_imported_term_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'solace_imported_term_post_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'solace_imported_term_post_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'solace_imported_term_post_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'solace_imported_term_post_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'solace_imported_term_product_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'solace_imported_term_product_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'solace_imported_term_product_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'solace_imported_term_product_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'solace_imported_term_product_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'solace_imported_term_product_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'solace_imported_term_product_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'solace_imported_term_product_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'solace_import_menu_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'solace_import_menu_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'solace_import_menu_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'solace_import_menu_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_solace_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_solace_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_solace_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_solace_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_preview_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_preview_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_preview_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_preview_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_preview_settings_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_preview_settings_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_preview_settings_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_preview_settings_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_preview_settings_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_preview_settings_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_preview_settings_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_preview_settings_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_preview_settings_category_shop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_preview_settings_category_shop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_preview_settings_category_shop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_preview_settings_category_shop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cd_backorder_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cd_backorder_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cd_backorder_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cd_backorder_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_solace_header_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_solace_header_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_solace_header_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_solace_header_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_solace_header_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_solace_header_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_solace_header_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_solace_header_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
