#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'templately_ai_business_niches'
wp option delete 'templately_ai_processed_pages'
wp option delete 'templately_logo_generation_processes'
wp option delete 'templately_logo_generation_data'
wp option delete 'templately_custom_css'
wp option delete 'site_logo'
wp option delete 'eb_global_styles'
wp option delete 'templately-gutenberg-hide-buttons'
wp option delete 'templately_flush_rewrite_rules'
wp option delete 'templately_fsi_imported_list'
wp option delete 'templately_fsi_log'
wp option delete 'templately_import_platform'
wp option delete 'templately_post_archive'
wp option delete '__templately_stylesheet'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '__templately_%'"
wp option delete 'fluent_cart_store_settings'
wp option delete 'templately_enable_fsi_skip_on_error'
wp option delete 'templately_ai_process_data'
wp option delete '_templately_global_login'

# Delete Transients
wp transient delete 'templately_subscriptions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_templately_header_styles_%' OR option_name LIKE '_site_transient_templately_header_styles_%'"
wp transient delete 'templately-google-fonts'
wp transient delete 'templately_activation_redirect'
wp transient delete 'wpnotice_priority_time_expired'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_templately_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_templately_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_templately_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_templately_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'templately_fsi_complete'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'templately_fsi_complete'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'templately_fsi_complete'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'templately_fsi_complete'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'templately_fsi_pack_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'templately_fsi_pack_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'templately_fsi_pack_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'templately_fsi_pack_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fluent-products-gallery-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fluent-products-gallery-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fluent-products-gallery-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fluent-products-gallery-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_templately_original_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_templately_original_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_templately_original_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_templately_original_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_templately_original_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_templately_original_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_templately_original_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_templately_original_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_templately_demo_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_templately_demo_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_templately_demo_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_templately_demo_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_templately_image_hash_meta_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_templately_image_hash_meta_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_templately_image_hash_meta_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_templately_image_hash_meta_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
