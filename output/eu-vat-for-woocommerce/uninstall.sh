#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_eu_vat_add_order_list_column'
wp option delete 'alg_wc_eu_vat_validate_vat_admin_side'
wp option delete 'alg_wc_eu_vat_admin_new_order_email'
wp option delete 'alg_wc_eu_vat_exempt_for_user_roles'
wp option delete 'alg_wc_eu_vat_not_exempt_for_user_roles'
wp option delete 'alg_wc_eu_vat_field_label'
wp option delete 'alg_wc_eu_vat_add_order_edit_metabox'
wp option delete 'alg_wc_eu_vat_validate'
wp option delete 'alg_wc_eu_vat_force_checkout_recheck'
wp option delete 'alg_wc_eu_vat_manual_validation_enable'
wp option delete 'alg_wc_eu_vat_manual_validation_vat_numbers'
wp option delete 'alg_wc_eu_vat_preserv_vat_for_different_shipping'
wp option delete 'alg_wc_eu_vat_not_valid_message'
wp option delete 'alg_wc_eu_vat_enable_checkout_block_field'
wp option delete 'alg_wc_eu_vat_hide_eu_vat'
wp option delete 'woocommerce_version'
wp option delete 'alg_wc_eu_vat_checkout_block_field_dependencies'
wp option delete 'alg_wc_eu_vat_validate_my_account'
wp option delete 'alg_wc_eu_vat_add_progress_text'
wp option delete 'alg_wc_eu_vat_validate_action_trigger'
wp option delete 'alg_wc_eu_vat_hide_message_on_preserved_countries'
wp option delete 'alg_wc_eu_vat_progress_text_validating'
wp option delete 'alg_wc_eu_vat_progress_text_valid'
wp option delete 'alg_wc_eu_vat_progress_text_not_valid'
wp option delete 'alg_wc_eu_vat_progress_text_is_required'
wp option delete 'alg_wc_eu_vat_progress_text_validation_failed'
wp option delete 'alg_wc_eu_vat_validate_enable_preserve_message'
wp option delete 'alg_wc_eu_vat_progress_text_validation_preserv'
wp option delete 'alg_wc_eu_vat_shipping_billing_countries'
wp option delete 'alg_wc_eu_vat_shipping_matches_base_country'
wp option delete 'alg_wc_eu_vat_wrong_billing_country'
wp option delete 'alg_wc_eu_vat_company_name_mismatch'
wp option delete 'alg_wc_eu_vat_progress_text_validation_vies_error'
wp option delete 'alg_wc_eu_vat_field_required'
wp option delete 'alg_wc_eu_vat_advance_enable_company_name_autofill'
wp option delete 'alg_wc_eu_vat_show_vat_details'
wp option delete 'alg_wc_eu_vat_compatibility_fluid_checkout'
wp option delete 'alg_wc_eu_vat_always_show_zero_vat'
wp option delete 'alg_wc_eu_vat_show_hide_by_billing_company'
wp option delete 'alg_wc_eu_vat_preserve_in_base_country'
wp option delete 'woocommerce_default_country'
wp option delete 'alg_wc_eu_vat_preserve_in_base_country_locations'
wp option delete 'alg_wc_eu_vat_preserve_vat_for_base_country_shipping'
wp option delete 'alg_wc_eu_vat_compatibility_wpo_wcpdf'
wp option delete 'alg_wc_eu_vat_compatibility_yith_ywpi'
wp option delete 'alg_wc_eu_vat_compatibility_wpo_wcpdf_prefix'
wp option delete 'alg_wc_eu_vat_advanced_vat_shifted_text'
wp option delete 'alg_wc_eu_vat_field_confirmation'
wp option delete 'alg_wc_eu_vat_force_price_display_incl_tax'
wp option delete 'alg_wc_eu_vat_keep_shipping_vat'
wp option delete 'alg_wc_eu_vat_field_placeholder'
wp option delete 'alg_wc_eu_vat_field_priority'
wp option delete 'alg_wc_eu_vat_allow_without_country_code'
wp option delete 'alg_wc_eu_vat_preserve_country_type'
wp option delete 'alg_wc_eu_vat_field_confirmation_text'
wp option delete 'alg_wc_eu_vat_field_let_customer_decide_label'
wp option delete 'alg_wc_eu_vat_belgium_compatibility_label'
wp option delete 'alg_wc_eu_vat_field_let_customer_decide'
wp option delete 'alg_wc_eu_vat_field_description'
wp option delete 'alg_wc_eu_vat_field_maxlength'
wp option delete 'alg_wc_eu_vat_field_clear'
wp option delete 'alg_wc_eu_vat_field_class'
wp option delete 'alg_wc_eu_vat_field_label_class'
wp option delete 'alg_wc_eu_vat_field_hide_tax_status_none'
wp option delete 'alg_wc_eu_vat_belgium_compatibility'
wp option delete 'alg_wc_eu_vat_sitepress_optimizer_dynamic_caching'
wp option delete 'alg_wc_eu_vat_disable_for_valid'
wp option delete 'alg_wc_eu_vat_validate_vies_not_available'
wp option delete 'alg_wc_eu_vat_validate_force_page_reload'
wp option delete 'alg_wc_eu_vat_remove_validation_color'
wp option delete 'alg_wc_eu_vat_field_required_countries'
wp option delete 'alg_wc_eu_vat_display_position'
wp option delete 'alg_wc_eu_vat_field_display_template'
wp option delete 'alg_wc_eu_vat_remove_country_rest_api_enable'
wp option delete 'alg_wc_eu_vat_field_signup_form'
wp option delete 'alg_wc_eu_vat_validate_sign_up_page'
wp option delete 'alg_wc_eu_vat_version'
wp option delete 'alg_wc_eu_vat_debug'
wp option delete 'alg_wc_eu_vat_session_type'
wp option delete 'alg_wc_eu_vat_check_company_name_accept_empty_response'
wp option delete 'alg_wc_eu_vat_allow_non_alphanumeric'
wp option delete 'alg_wc_eu_vat_check_billing_country_code'
wp option delete 'alg_wc_eu_vat_request_identifier'
wp option delete 'alg_wc_eu_vat_requester_country_code'
wp option delete 'alg_wc_eu_vat_requester_vat_number'
wp option delete 'alg_wc_eu_vat_advanced_skip_countries'
wp option delete 'alg_wc_eu_vat_first_method'
wp option delete 'alg_wc_eu_vat_vatsense_key'
wp option delete 'alg_wc_eu_vat_reduce_concurrent_request_enable'
wp option delete 'alg_wc_pgpp_pay_titles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_vat_exempt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_vat_exempt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_vat_exempt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_vat_exempt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_customer_decide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_customer_decide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_customer_decide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_customer_decide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_eu_vat_keep_vat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_eu_vat_keep_vat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_eu_vat_keep_vat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_eu_vat_keep_vat'"
