#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'op_disabled_blocks'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_omnipress_used_blocks'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-used_blocks'"
wp option delete 'omnipress_consent_optin'
wp option delete 'taxonomy_image_enabled_taxonomies'
wp option delete 'omnipress_restricted_user_roles'
wp option delete 'omnipress_disabled_blocks'
wp option delete 'omnipress_library_button_option'
wp option delete 'omnipress_container_gap'
wp option delete 'op_breakpoint'
wp option delete 'omnipress_container_default_styling'
wp option delete 'omnipress_maintenance_mode'
wp option delete 'omnipress_downloaded_images_urls'
wp option delete 'omnipress_prev_version'
wp option delete 'omnipress_fields'
wp option delete 'omnipress_global_wp_template_fonts'
wp option delete 'omnipress_global_wp_template_part_fonts'
wp option delete 'myplugin_coming_soon'

# Delete Transients
wp transient delete 'op_popup_render_count'
wp transient delete 'omnipress_consent_skip'
wp transient delete 'omnipress_coming_soon_bypass_url'
wp transient delete 'omnipress_recommended_plugins_notice'
wp transient delete 'op_coming_soon_bypass_url'
wp transient delete 'in_stock_count'
wp transient delete 'out_of_stock_count'
wp transient delete 'omnipress_blocks_details'
wp transient delete 'omnipress_blocks_lists'
wp transient delete 'op_demo_imported'
wp transient delete 'omnipress_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_omnipress_used_blocks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_omnipress_used_blocks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_omnipress_used_blocks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_omnipress_used_blocks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'opp_is_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'opp_is_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'opp_is_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'opp_is_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'omnipress_post_type_fonts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'omnipress_post_type_fonts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'omnipress_post_type_fonts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'omnipress_post_type_fonts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_author_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_author_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_author_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_author_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_author_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_author_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_author_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_author_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_author_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_author_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_author_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_author_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_crosssell_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_crosssell_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_crosssell_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_crosssell_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_related_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_related_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_related_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_related_product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_custom_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_custom_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_custom_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_custom_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brand_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brand_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brand_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brand_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'op_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'op_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'op_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'op_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
