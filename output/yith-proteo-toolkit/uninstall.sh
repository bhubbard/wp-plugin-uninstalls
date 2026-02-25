#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yith_proteo_toolkit_modules_active'
wp option delete 'yith_proteo_toolkit_first_setup_run'
wp option delete 'yith_proteo_toolkit_run_setup'
wp option delete 'recently_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_completed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_child'"
wp option delete 'allowedthemes'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'widget_yith_proteo_account_widget'
wp option delete 'elementor_disable_color_schemes'
wp option delete 'elementor_disable_typography_schemes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'

# Delete Transients
wp transient delete 'elementor_activation_redirect'
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_wizard_redirect' OR option_name LIKE '_site_transient_%_wizard_redirect'"
wp transient delete 'wizard_import_file_base_name'
wp transient delete 'pt_importer_data'
wp transient delete 'wc_attribute_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'proteo_testimonial_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'proteo_testimonial_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'proteo_testimonial_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'proteo_testimonial_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'proteo_testimonial_small_quote'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'proteo_testimonial_small_quote'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'proteo_testimonial_small_quote'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'proteo_testimonial_small_quote'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'proteo_testimonial_subtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'proteo_testimonial_subtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'proteo_testimonial_subtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'proteo_testimonial_subtitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'proteo_testimonial_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'proteo_testimonial_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'proteo_testimonial_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'proteo_testimonial_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'proteo_testimonial_social_facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'proteo_testimonial_social_facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'proteo_testimonial_social_facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'proteo_testimonial_social_facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'proteo_testimonial_social_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'proteo_testimonial_social_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'proteo_testimonial_social_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'proteo_testimonial_social_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'proteo_testimonial_social_youtube'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'proteo_testimonial_social_youtube'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'proteo_testimonial_social_youtube'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'proteo_testimonial_social_youtube'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'proteo_testimonial_social_instagram'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'proteo_testimonial_social_instagram'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'proteo_testimonial_social_instagram'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'proteo_testimonial_social_instagram'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'proteo_testimonial_social_tiktok'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'proteo_testimonial_social_tiktok'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'proteo_testimonial_social_tiktok'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'proteo_testimonial_social_tiktok'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'proteo_testimonial_social_linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'proteo_testimonial_social_linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'proteo_testimonial_social_linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'proteo_testimonial_social_linkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'proteo_testimonial_social_skype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'proteo_testimonial_social_skype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'proteo_testimonial_social_skype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'proteo_testimonial_social_skype'"
