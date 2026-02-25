#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dynamic_mockups_api_key'
wp option delete 'dynamic_mockups_editor_website_key'
wp option delete 'dynamic_mockups_onboarding_completed'
wp option delete 'dynamic_mockups_last_sync_datetime'
wp option delete 'dynamic_mockups_hide_product_personalization'
wp option delete 'dynamic_mockups_personalization_button_text'
wp option delete 'dynamic_mockups_enable_color_options'
wp option delete 'dynamic_mockups_one_color_per_smart_object'
wp option delete 'dynamic_mockups_show_color_picker'
wp option delete 'dynamic_mockups_show_color_presets'
wp option delete 'dynamic_mockups_show_transform_controls'
wp option delete 'dynamic_mockups_export_mockups_button_text'

# Delete Transients
wp transient delete 'dynamic_mockups_verify_and_sync'
wp transient delete 'dynamic_mockups_auto_sync_status'
wp transient delete 'dynamic_mockups_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dynamic_mockups_product_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dynamic_mockups_product_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dynamic_mockups_product_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dynamic_mockups_product_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dynamic_mockups_template_group_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dynamic_mockups_template_group_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dynamic_mockups_template_group_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dynamic_mockups_template_group_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dynamic_mockups_mockup_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dynamic_mockups_mockup_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dynamic_mockups_mockup_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dynamic_mockups_mockup_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dynamic_mockups_mockup_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dynamic_mockups_mockup_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dynamic_mockups_mockup_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dynamic_mockups_mockup_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dynamic_mockups_mockup_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dynamic_mockups_mockup_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dynamic_mockups_mockup_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dynamic_mockups_mockup_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dynamic_mockups_inputs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dynamic_mockups_inputs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dynamic_mockups_inputs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dynamic_mockups_inputs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dynamic_mockups_personalize_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dynamic_mockups_personalize_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dynamic_mockups_personalize_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dynamic_mockups_personalize_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dynamic_mockups_custom_collection_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dynamic_mockups_custom_collection_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dynamic_mockups_custom_collection_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dynamic_mockups_custom_collection_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dynamic_mockups_personalization_template_group_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dynamic_mockups_personalization_template_group_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dynamic_mockups_personalization_template_group_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dynamic_mockups_personalization_template_group_uuid'"
