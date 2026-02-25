#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aitnb_settings'
wp option delete 'aitnb_activation_status'

# Delete Transients
wp transient delete 'aitnb_gemini_models_list'
wp transient delete 'aitnb_activation_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aitnb_style_recs_%' OR option_name LIKE '_site_transient_aitnb_style_recs_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitnb_enable_tryon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitnb_enable_tryon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitnb_enable_tryon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitnb_enable_tryon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitnb_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitnb_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitnb_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitnb_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitnb_overlay_asset_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitnb_overlay_asset_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitnb_overlay_asset_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitnb_overlay_asset_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitnb_ar_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitnb_ar_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitnb_ar_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitnb_ar_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitnb_asset_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitnb_asset_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitnb_asset_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitnb_asset_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitnb_asset_scale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitnb_asset_scale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitnb_asset_scale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitnb_asset_scale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitnb_enable_fit_recommender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitnb_enable_fit_recommender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitnb_enable_fit_recommender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitnb_enable_fit_recommender'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitnb_size_chart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitnb_size_chart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitnb_size_chart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitnb_size_chart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitnb_enable_style_assistant'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitnb_enable_style_assistant'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitnb_enable_style_assistant'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitnb_enable_style_assistant'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitnb_style_assistant_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitnb_style_assistant_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitnb_style_assistant_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitnb_style_assistant_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitnb_purchase_tracked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitnb_purchase_tracked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitnb_purchase_tracked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitnb_purchase_tracked'"
