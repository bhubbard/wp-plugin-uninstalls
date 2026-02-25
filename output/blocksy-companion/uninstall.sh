#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blc_activation_redirect'
wp option delete 'blocksy_active_extensions'
wp option delete 'blocksy_ext_white_label_settings'
wp option delete 'blocksy_ext_demos_current_demo'
wp option delete 'blocksy_ext_demos_currently_installing_demo'
wp option delete 'sidebars_widgets'
wp option delete 'blocksy_active_extensions_old'
wp option delete 'blocksy_ext_mailchimp_credentials'
wp option delete 'blocksy_ext_product_reviews_settings'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_enable_myaccount_registration'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'blocksy_custom_palettes'
wp option delete 'allowedthemes'
wp option delete 'blocksy_ext_demos_exported_demo_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'wpforms_settings'
wp option delete 'qubely_global_options'
wp option delete 'elementor_experiment-container'
wp option delete 'woocommerce_db_version'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'dismissed-blocksy_theme_version_mismatch_notice'
wp option delete 'wpappninja'
wp option delete 'breakdance_is_theme_disabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blocksy_product_review_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blocksy_product_review_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blocksy_product_review_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blocksy_product_review_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blocksy_taxonomy_meta_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blocksy_taxonomy_meta_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blocksy_taxonomy_meta_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blocksy_taxonomy_meta_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blocksy_demos_imported_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blocksy_demos_imported_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blocksy_demos_imported_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blocksy_demos_imported_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blocksy_demos_imported_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blocksy_demos_imported_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blocksy_demos_imported_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blocksy_demos_imported_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy_post_uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy_post_uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy_post_uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy_post_uid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'brizy-project-import-backup-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'brizy-project-import-backup-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'brizy-project-import-backup-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'brizy-project-import-backup-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blocksy_original_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blocksy_original_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blocksy_original_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blocksy_original_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
