#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uag_btn_inherit_from_theme_fallback'
wp option delete 'spectra_global_block_styles'
wp option delete '__uagb_asset_version'
wp option delete 'uagb-old-user-less-than-2'
wp option delete 'widget_block'
wp option delete 'uagb_block_usage_status'
wp option delete 'spectra_usage_optin'
wp option delete 'uagb_block_usage_data'
wp option delete 'spectra_partner_url_param'
wp option delete 'uag_migration_status'
wp option delete 'uag_migration_progress_status'
wp option delete '__uagb_do_redirect'
wp option delete 'uag_migration_complete'
wp option delete 'classic-editor-replace'
wp option delete 'uagb_beta'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_checkout_order_received_endpoint'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_pay_page_id'
wp option delete 'woocommerce_shop_page_id'
wp option delete '_uagb_allow_file_generation'
wp option delete '_uagb_fse_uniqids'
wp option delete 'spectra_svg_confirmation'
wp option delete 'spectra_gbs_google_fonts'
wp option delete 'spectra_gbs_google_fonts_editor'
wp option delete '__uagb_activated_before'
wp option delete 'bsf_product_referers'
wp option delete 'uag_enable_legacy_blocks'
wp option delete 'uag_enable_templates_button'
wp option delete 'uag_enable_on_page_css_button'
wp option delete 'uag_enable_block_condition'
wp option delete 'uag_enable_quick_action_sidebar'
wp option delete 'uag_enable_gbs_extension'
wp option delete 'uag_enable_block_responsive'
wp option delete 'uag_load_select_font_globally'
wp option delete 'uag_load_gfonts_locally'
wp option delete 'uag_collapse_panels'
wp option delete 'uag_copy_paste'
wp option delete 'uag_preload_local_fonts'
wp option delete 'uag_visibility_mode'
wp option delete 'uag_container_global_padding'
wp option delete 'uag_container_global_elements_gap'
wp option delete 'uag_btn_inherit_from_theme'
wp option delete 'uag_blocks_editor_spacing'
wp option delete 'uag_load_font_awesome_5'
wp option delete 'uag_auto_block_recovery'
wp option delete 'uag_load_fse_font_globally'
wp option delete 'uagb-version'
wp option delete 'allowed_astra_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_optin'"
wp option delete 'bsf_usage_last_displayed_time'
wp option delete 'bsf_usage_migrated'
wp option delete 'bsf_analytics_last_displayed_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_installed_time'"
wp option delete 'ast-block-templates-show-onboarding'
wp option delete 'ast_block_templates_favorites'
wp option delete 'ast_block_templates_fresh_site'
wp option delete 'ast-show-pages-onboarding'
wp option delete 'ast_block_templates_ai_settings'
wp option delete 'zip_ai_modules'
wp option delete 'ast_block_ai_content_log'
wp option delete 'zipwp_user_business_details'
wp option delete 'ast-templates-ai-content'
wp option delete 'ast-block-templates-new-user'
wp option delete 'ast_block_downloaded_images'
wp option delete 'zip_ai_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ast-block-templates_data-%'"
wp option delete 'ast_block_templates_wpforms_ids_mapping'
wp option delete 'ast_skip_zip_ai_onboarding'
wp option delete 'ast_blocks_sync_in_progress'
wp option delete 'ast-templates-business-details-synced'
wp option delete 'ast-block-templates-last-export-checksums-time'
wp option delete 'ast-block-templates-last-export-checksums-latest'
wp option delete 'ast-block-templates-version'
wp option delete 'ast-templates-business-details'
wp option delete 'ast-block-templates-spectra-common-styles'
wp option delete 'uagb_downloaded_font_files'
wp option delete 'uagb_preload_font_files'
wp option delete 'zipwp_partner_url_param'
wp option delete 'zip_ai_assistant_option'
wp option delete 'zipwp-images-saved-images'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_uag_rollback_versions_%' OR option_name LIKE '_site_transient_uag_rollback_versions_%'"
wp transient delete 'uag_migration_needs_reload'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'bsf_analytics_track'
wp transient delete 'bsf_usage_track'
wp transient delete 'ast_block_templates_hide_personalize_ai_notice'
wp transient delete 'ast_block_templates_hide_build_page_ai_notice'
wp transient delete 'ast_block_templates_hide_credit_warning_notice'
wp transient delete 'ast_block_templates_hide_credit_danger_notice'
wp transient delete 'zip_ai_credit_details'
wp transient delete 'zip_ai_auth_token'
wp transient delete 'zip_ai_current_plan_details'

# Clear Cron Jobs
wp cron event delete 'spectra_regenerate_post_assets'
wp cron event delete 'spectra_blocks_migration_event'
wp cron event delete 'ast_templates_download_selected_images'
wp cron event delete 'sync_blocks'
wp cron event delete 'uagb_delete_fonts_folder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uag_page_assets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uag_page_assets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uag_page_assets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uag_page_assets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uag_css_file_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uag_css_file_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uag_css_file_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uag_css_file_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uag_js_file_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uag_js_file_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uag_js_file_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uag_js_file_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spectra-popup-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spectra-popup-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spectra-popup-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spectra-popup-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spectra-popup-enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spectra-popup-enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spectra-popup-enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spectra-popup-enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uagb_toc_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uagb_toc_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uagb_toc_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uagb_toc_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uagb_previous_block_counts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uagb_previous_block_counts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uagb_previous_block_counts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uagb_previous_block_counts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uagb_last_spectra_edit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uagb_last_spectra_edit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uagb_last_spectra_edit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uagb_last_spectra_edit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pse_country_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pse_country_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pse_country_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pse_country_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uag_custom_page_level_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uag_custom_page_level_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uag_custom_page_level_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uag_custom_page_level_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_file_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_file_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_file_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_file_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uag_migration_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uag_migration_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uag_migration_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uag_migration_processed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spectra-popup-repetition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spectra-popup-repetition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spectra-popup-repetition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spectra-popup-repetition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ast_block_templates_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ast_block_templates_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ast_block_templates_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ast_block_templates_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zipwp-images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zipwp-images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zipwp-images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zipwp-images'"
