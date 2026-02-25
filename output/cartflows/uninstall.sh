#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cartflows-assets-version'
wp option delete '_cartflows_common'
wp option delete 'cartflows_permalink_refresh'
wp option delete 'cartflows_kb_searches'
wp option delete 'wcf-instant-checkout-notice-skipped'
wp option delete '_cartflows_old_global_checkout	'
wp option delete 'cartflows-batch-is-complete'
wp option delete 'cartflows-manual-sync-complete'
wp option delete '_cartflows_store_checkout'
wp option delete 'wcf_first_flow_imported'
wp option delete 'wcf_learn_data'
wp option delete 'cartflows_delete_plugin_data'
wp option delete 'cartflows_stats_report_emails'
wp option delete 'cf_usage_optin'
wp option delete 'cartflows_stats_report_email_ids'
wp option delete 'cartflows_funnel_creation_method'
wp option delete '_cartflows_old_global_checkout'
wp option delete 'cpsw_test_con_status'
wp option delete 'cpsw_con_status'
wp option delete 'cartflows_docs_data'
wp option delete 'cartflows_show_weekly_report_email_notice'
wp option delete 'wcf_ignore_gutenberg_notice'
wp option delete '_cartflows_wizard_store_checkout_set'
wp option delete 'wcf_setup_complete'
wp option delete 'wcf_setup_skipped'
wp option delete 'wcf_exit_setup_step'
wp option delete 'bsf_product_referers'
wp option delete 'nps-survey-cartflows'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_key'"
wp option delete 'cartflows-legacy-meta-show-design-options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-requests'"
wp option delete 'cartflows_partner_url_param'
wp option delete 'wcf_start_onboarding'
wp option delete 'cartflows-version'
wp option delete 'cartflows-old-ui-user'
wp option delete 'cartflows-legacy-admin'
wp option delete 'wc_am_client_CartFlows_api_key'
wp option delete 'wc_am_client_CartFlows'
wp option delete 'cartflows_license_backup_data'
wp option delete 'wc_am_client_cartflows'
wp option delete 'wc_am_client_cartflows_api_key'
wp option delete 'cartflows-fresh-site'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%last-export-checksums-latest'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%last-export-checksums'"
wp option delete 'cartflows-batch-status-string'
wp option delete 'cartflows-batch-status'
wp option delete 'allowed_astra_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_optin'"
wp option delete 'bsf_usage_last_displayed_time'
wp option delete 'bsf_usage_migrated'
wp option delete 'bsf_analytics_last_displayed_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_installed_time'"
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_tax_display_cart'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cartflows_rollback_versions_%' OR option_name LIKE '_site_transient_cartflows_rollback_versions_%'"
wp transient delete 'update_plugins'
wp transient delete 'cartflows_is_wcf_template_import'
wp transient delete 'cartflows-cron-test-ok'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete '_fl_builder_activation_admin_notice'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp transient delete 'bsf_analytics_track'
wp transient delete 'bsf_usage_track'
wp transient delete '_wc_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-hide-step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-hide-step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-hide-step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-hide-step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-steps'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-steps'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-steps'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-steps'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-instant-checkout-notice-skipped'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-instant-checkout-notice-skipped'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-instant-checkout-notice-skipped'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-instant-checkout-notice-skipped'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-step-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-step-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-step-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-step-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-flow-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-flow-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-flow-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-flow-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instant-layout-style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instant-layout-style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instant-layout-style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instant-layout-style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'divi_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'divi_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'divi_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'divi_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cartflows_imported_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cartflows_imported_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cartflows_imported_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cartflows_imported_step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-ab-test'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-ab-test'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-ab-test'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-ab-test'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-dynamic-css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-dynamic-css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-dynamic-css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-dynamic-css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-field-google-font-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-field-google-font-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-field-google-font-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-field-google-font-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-checkout-products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-checkout-products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-checkout-products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-checkout-products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-disable-step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-disable-step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-disable-step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-disable-step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-enable-gcp-styling'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-enable-gcp-styling'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-enable-gcp-styling'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-enable-gcp-styling'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-flow-indexing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-flow-indexing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-flow-indexing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-flow-indexing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-flow-custom-script'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-flow-custom-script'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-flow-custom-script'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-flow-custom-script'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-custom-script'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-custom-script'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-custom-script'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-custom-script'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wcf_fields_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wcf_fields_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wcf_fields_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wcf_fields_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-optin-product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-optin-product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-optin-product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-optin-product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-offer-product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-offer-product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-offer-product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-offer-product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-obj'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-obj'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-obj'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-obj'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-control-step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-control-step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-control-step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-control-step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cartflows_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cartflows_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cartflows_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cartflows_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfwd-courses_wcf_course_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfwd-courses_wcf_course_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfwd-courses_wcf_course_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfwd-courses_wcf_course_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-enable-product-options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-enable-product-options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-enable-product-options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-enable-product-options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-order-bump'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-order-bump'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-order-bump'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-order-bump'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-pre-checkout-offer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-pre-checkout-offer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-pre-checkout-offer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-pre-checkout-offer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wcf_field_order_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wcf_field_order_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wcf_field_order_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wcf_field_order_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-custom-checkout-fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-custom-checkout-fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-custom-checkout-fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-custom-checkout-fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wcf-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wcf-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wcf-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wcf-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wcf-field-width_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wcf-field-width_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wcf-field-width_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wcf-field-width_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-dynamic-css-version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-dynamic-css-version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-dynamic-css-version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-dynamic-css-version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-gcp-primary-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-gcp-primary-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-gcp-primary-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-gcp-primary-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-gcp-text-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-gcp-text-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-gcp-text-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-gcp-text-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-gcp-accent-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-gcp-accent-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-gcp-accent-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-gcp-accent-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf_field_order_billing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf_field_order_billing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf_field_order_billing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf_field_order_billing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf_field_order_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf_field_order_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf_field_order_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf_field_order_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-step-note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-step-note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-step-note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-step-note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-gcp-secondary-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-gcp-secondary-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-gcp-secondary-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-gcp-secondary-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-gcp-primary-text-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-gcp-primary-text-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-gcp-primary-text-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-gcp-primary-text-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cartflows_redirect_flow_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cartflows_redirect_flow_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cartflows_redirect_flow_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cartflows_redirect_flow_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cartflows_add_to_cart_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cartflows_add_to_cart_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cartflows_add_to_cart_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cartflows_add_to_cart_text'"
