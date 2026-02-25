#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_optin'"
wp option delete 'bsf_usage_last_displayed_time'
wp option delete 'bsf_usage_migrated'
wp option delete 'bsf_analytics_last_displayed_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_installed_time'"
wp option delete 'st_start_onboarding'
wp option delete 'astra_sites_import_complete'
wp option delete 'uae_widgets_usage_data_option'
wp option delete 'getting_started_action_items'
wp option delete 'astra_sites_wpforms_ids_mapping'
wp option delete 'astra_sites_batch_process_started'
wp option delete 'ast_ai_import_current_url'
wp option delete 'astra_sites_ai_import_started'
wp option delete 'astra-sites-last-export-checksums-latest'
wp option delete 'astra-sites-last-export-checksums'
wp option delete 'astra_sites_current_import_template_type'
wp option delete 'zipwp_import_site_details'
wp option delete '_astra_sites_gettings_started'
wp option delete 'astra_sites_settings'
wp option delete 'astra-sites-auto-version'
wp option delete 'astra-sites-fresh-site'
wp option delete 'astra-sites-requests'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'astra-sites-and-pages-page-%'"
wp option delete 'astra-sites-batch-status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'nps-survay-form-dismiss-status'
wp option delete 'nps-survey-astra-sites'
wp option delete 'st-beaver-builder-flag'
wp option delete 'st-elementor-builder-flag'
wp option delete 'astra_sites_import_started'
wp option delete 'astra_sites_usage_optin'
wp option delete 'astra_sites_current_spectra_blocks_ver'
wp option delete 'astra_sites_has_sent_error_report'
wp option delete 'astra_sites_cached_import_error'
wp option delete 'astra-sites-saved-images'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'astra_sites_import_elementor_data_%'"
wp option delete 'elementor_load_fa4_shim'
wp option delete 'elementor_experiment-container'
wp option delete 'astra-sites-favorites'
wp option delete 'astra-sites-license-page-builder'
wp option delete 'astra_sites_batch_process_complete'
wp option delete 'astra-sites-batch-is-complete'
wp option delete 'astra-sites-manual-sync-complete'
wp option delete 'astra-sites-current-page'
wp option delete 'uag_enable_legacy_design_library'
wp option delete 'register-v2-blocks'
wp option delete 'astra-sites-force-sync'
wp option delete 'wcar_do_redirect'
wp option delete 'cpsw_start_onboarding'
wp option delete 'latepoint_redirect_to_wizard'
wp option delete 'latepoint_show_version_5_modal'
wp option delete '__spectra_pro_do_redirect'
wp option delete 'uabb_lite_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_attribute_id'"
wp option delete 'st_attachments'
wp option delete 'st_attachments_offset'
wp option delete 'astra-settings'
wp option delete 'astra-sites-batch-status-string'
wp option delete 'astra-blocks-batch-status-string'
wp option delete 'widget_wpforms-widget'
wp option delete 'widget_media_image'
wp option delete 'astra_sites_imported_wxr_id'
wp option delete 'elementor_active_kit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'
wp option delete 'zipwp_partner_url_param'
wp option delete 'astra_sites_import_failed_sites'
wp option delete 'ai_import_logger'
wp option delete 'astra-color-palettes'
wp option delete 'astra_sites_recent_import_log_file'
wp option delete 'astra-site-permalink-update-status'
wp option delete 'ai_builder_promo_dismiss_time'
wp option delete 'zipwp_user_business_details'
wp option delete 'ast_sites_downloaded_images'
wp option delete 'zipwp_selection_templates'
wp option delete 'zip_ai_settings'
wp option delete 'wcf_setup_skipped'
wp option delete 'wcf_start_onboarding'
wp option delete 'surecart_source'
wp option delete 'surecart_checkout_page_id'
wp option delete 'surecart_checkout_sc_form_id'
wp option delete 'surecart_dashboard_page_id'
wp option delete 'surecart_shop_page_id'
wp option delete '__srfm_do_redirect'
wp option delete 'suremails_do_redirect'
wp option delete 'surerank_redirect_on_activation'
wp option delete 'uaepro_start_onboarding'
wp option delete 'hfe_start_onboarding'
wp option delete '__uagb_do_redirect'
wp option delete 'wcpay_should_redirect_to_onboarding'
wp option delete '_astra_sites_old_site_options'
wp option delete '_astra_sites_old_widgets_data'
wp option delete 'allowed_astra_notices'
wp option delete 'ast-block-templates-show-onboarding'
wp option delete 'ast_block_templates_favorites'
wp option delete 'ast_block_templates_fresh_site'
wp option delete 'brainstrom_products'
wp option delete 'brainstrom_bundled_products'
wp option delete 'ast-show-pages-onboarding'
wp option delete 'ast_block_templates_ai_settings'
wp option delete 'zip_ai_modules'
wp option delete 'ast_block_ai_content_log'
wp option delete 'ast-templates-ai-content'
wp option delete 'ast-block-templates-new-user'
wp option delete 'ast_block_downloaded_images'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ast-block-templates_data-%'"
wp option delete 'ast_block_templates_wpforms_ids_mapping'
wp option delete 'ast_block_templates_sureforms_ids_mapping'
wp option delete 'ast_skip_zip_ai_onboarding'
wp option delete 'ast_blocks_sync_in_progress'
wp option delete 'ast-templates-business-details-synced'
wp option delete 'ast-block-templates-last-export-checksums-time'
wp option delete 'ast-block-templates-last-export-checksums-latest'
wp option delete 'ast-block-templates-version'
wp option delete 'ast-templates-business-details'
wp option delete 'ast-block-templates-spectra-common-styles'
wp option delete 'astra_sites_sureforms_id_map'
wp option delete 'astra_sites_surecart_forms_id_map'
wp option delete 'astra_sites_surecart_mapping_data'
wp option delete 'astra_sites_ai_imports'
wp option delete '_astra_sites_old_customizer_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'astra_sites_%'"
wp option delete 'zip_ai_assistant_option'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'zipwp-images-saved-images'

# Delete Transients
wp transient delete 'bsf_analytics_track'
wp transient delete 'bsf_usage_track'
wp transient delete 'astra-sites-cron-test-ok'
wp transient delete 'astra-sites-import-check'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_astra-sites-term-%' OR option_name LIKE '_site_transient_astra-sites-term-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_astra-sites-post-%' OR option_name LIKE '_site_transient_astra-sites-post-%'"
wp transient delete 'wpforms_activation_redirect'
wp transient delete '_fl_builder_activation_admin_notice'
wp transient delete 'wcar_redirect_to_onboarding'
wp transient delete 'elementor_activation_redirect'
wp transient delete 'moderncart_redirect_to_onboarding'
wp transient delete 'wc_attribute_taxonomies'
wp transient delete 'astra_sites_batch_process_started'
wp transient delete 'st-redirect-after-activation'
wp transient delete 'astra_sites_woopayments_notice_dismissed'
wp transient delete 'woopayments_referral_code'
wp transient delete 'zipwp_images_server_country_code'
wp transient delete 'getting_started_notice_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_license_status' OR option_name LIKE '_site_transient_%_license_status'"
wp transient delete 'ast_block_templates_hide_personalize_ai_notice'
wp transient delete 'ast_block_templates_hide_build_page_ai_notice'
wp transient delete 'ast_block_templates_hide_credit_warning_notice'
wp transient delete 'ast_block_templates_hide_credit_danger_notice'
wp transient delete 'astra_sites_import_started'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'zip_ai_credit_details'
wp transient delete 'zip_ai_auth_token'
wp transient delete 'zip_ai_current_plan_details'

# Clear Cron Jobs
wp cron event delete 'ast_templates_download_selected_images'
wp cron event delete 'sync_blocks'
wp cron event delete 'generate_analytics_lead'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_astra_sites_imported_wp_forms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_astra_sites_imported_wp_forms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_astra_sites_imported_wp_forms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_astra_sites_imported_wp_forms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'astra-sites-subscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'astra-sites-subscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'astra-sites-subscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'astra-sites-subscribed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'astra-images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'astra-images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'astra-images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'astra-images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_astra_sites_enable_for_batch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_astra_sites_enable_for_batch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_astra_sites_enable_for_batch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_astra_sites_enable_for_batch'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_astra_sites_imported_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_astra_sites_imported_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_astra_sites_imported_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_astra_sites_imported_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pa_color_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pa_color_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pa_color_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pa_color_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brizy_post_uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brizy_post_uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brizy_post_uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brizy_post_uid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_astra_sites_hotlink_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_astra_sites_hotlink_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_astra_sites_hotlink_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_astra_sites_hotlink_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_astra_sites_elementor_processed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_astra_sites_elementor_processed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_astra_sites_elementor_processed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_astra_sites_elementor_processed_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ast_block_templates_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ast_block_templates_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ast_block_templates_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ast_block_templates_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ast_block_templates_auto_open_design_library'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ast_block_templates_auto_open_design_library'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ast_block_templates_auto_open_design_library'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ast_block_templates_auto_open_design_library'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_astra_sites_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_astra_sites_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_astra_sites_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_astra_sites_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_astra_sites_imported_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_astra_sites_imported_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_astra_sites_imported_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_astra_sites_imported_term'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_url'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zipwp-images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zipwp-images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zipwp-images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zipwp-images'"
