#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rankology_setting_options'
wp option delete 'rankology_setting_schemas'
wp option delete 'rankology_setting_htaccess'
wp option delete 'rankology_setting_robot'
wp option delete 'rankology_apikey'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'rankology_ai_api_key'
wp option delete 'rankology_ai_model'
wp option delete 'rankology_ai_default_tone'
wp option delete 'rankology_ai_default_language'
wp option delete 'rankology_ai_provider'
wp option delete 'rankology_ai_enable_product_description'
wp option delete 'rankology_ai_generation_history'
wp option delete 'rankology_ai_usage_logs'
wp option delete 'bloglangage'
wp option delete 'rankology_image_optimizer_stats'
wp option delete 'rankology_image_optimizer_queue'
wp option delete 'rankology_webhook_secret'
wp option delete 'rankology_api_key'
wp option delete 'rankology_webhook_secret_key'
wp option delete 'rankology_cpt_settings'
wp option delete 'rankology_spb_setting_options'
wp option delete 'rankology_html_stats_before'
wp option delete 'rankology_html_stats_after'
wp option delete 'rankology_pagespeed_cache_duration'
wp option delete 'rankology_spb_header_cache_options'

# Delete Transients
wp transient delete 'rankology_css_regenerating_active'
wp transient delete 'rankology_js_regenerating_active'
wp transient delete 'rankology_html_precaching_active'
wp transient delete 'rankology_cache_header_error'
wp transient delete 'rankology_cache_header_success'
wp transient delete 'rankology_gzip_success'
wp transient delete 'rankology_gzip_error'
wp transient delete 'rankology_pagespeed_cache_last_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rankology_enable_auto_schema_structure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rankology_enable_auto_schema_structure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rankology_enable_auto_schema_structure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rankology_enable_auto_schema_structure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rankology_schema_structure_manually'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rankology_schema_structure_manually'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rankology_schema_structure_manually'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rankology_schema_structure_manually'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rankology_meta_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rankology_meta_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rankology_meta_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rankology_meta_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankology_ai_featured_image_optimization'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankology_ai_featured_image_optimization'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankology_ai_featured_image_optimization'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankology_ai_featured_image_optimization'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_short_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_short_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_short_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_short_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rankology_redirect_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rankology_redirect_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rankology_redirect_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rankology_redirect_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'redirect_type_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'redirect_type_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'redirect_type_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'redirect_type_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rankology_header_footer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rankology_header_footer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rankology_header_footer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rankology_header_footer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankology_webp_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankology_webp_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankology_webp_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankology_webp_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankology_original_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankology_original_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankology_original_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankology_original_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankology_optimized'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankology_optimized'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankology_optimized'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankology_optimized'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankology_optimized_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankology_optimized_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankology_optimized_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankology_optimized_size'"
