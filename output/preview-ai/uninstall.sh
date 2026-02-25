#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'preview_ai_api_key'
wp option delete 'preview_ai_needs_first_try'
wp option delete 'preview_ai_needs_onboarding'
wp option delete 'preview_ai_enabled'
wp option delete 'preview_ai_max_previews_per_user_weekly'
wp option delete 'preview_ai_analytics_enabled'
wp option delete 'preview_ai_display_mode'
wp option delete 'preview_ai_button_text'
wp option delete 'preview_ai_button_icon'
wp option delete 'preview_ai_button_position'
wp option delete 'preview_ai_button_shape'
wp option delete 'preview_ai_button_height'
wp option delete 'preview_ai_button_full_width'
wp option delete 'preview_ai_accent_color'
wp option delete 'preview_ai_store_compatibility'
wp option delete 'preview_ai_activation_time'
wp option delete 'preview_ai_api_endpoint'
wp option delete 'astra-settings'
wp option delete 'generate_settings'
wp option delete 'et_divi_accent_color'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_preview_ai_bulk_result_%' OR option_name LIKE '_site_transient_preview_ai_bulk_result_%'"
wp transient delete 'preview_ai_account_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_preview_ai_image_analysis'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_preview_ai_image_analysis'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_preview_ai_image_analysis'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_preview_ai_image_analysis'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_preview_ai_supported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_preview_ai_supported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_preview_ai_supported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_preview_ai_supported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_preview_ai_recommended_subtype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_preview_ai_recommended_subtype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_preview_ai_recommended_subtype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_preview_ai_recommended_subtype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_preview_ai_garment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_preview_ai_garment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_preview_ai_garment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_preview_ai_garment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_preview_ai_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_preview_ai_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_preview_ai_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_preview_ai_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
