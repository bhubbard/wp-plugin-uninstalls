#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cfef_usage_share_data'
wp option delete 'cfkef_enabled_elements'
wp option delete 'cfkef_toggle_all'
wp option delete 'cfkef_enable_elementor_pro_form'
wp option delete 'cfkef_enable_hello_plus'
wp option delete 'cfkef_enable_formkit_builder'
wp option delete 'cfl_plugin_initialized'
wp option delete 'CFL_initial_save_version'
wp option delete 'cfl-install-date'
wp option delete 'cfef_formdb_marketing_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-install-by'"
wp option delete 'cfl_review_notice_dismiss'
wp option delete 'cfkef-defaultPlugin'
wp option delete 'cpfm_opt_in_choice_cool_forms'
wp option delete 'cfl_site_key_v2'
wp option delete 'cfl_secret_key_v2'
wp option delete 'cfl_site_key_v3'
wp option delete 'cfl_secret_key_v3'
wp option delete 'cfl_threshold_v3'
wp option delete 'cfefp_redirect_conditionally'
wp option delete 'cfefp_email_conditionally'
wp option delete 'cfefp_mailchimp_conditionally'
wp option delete 'cfefp_getresponse_conditionally'
wp option delete 'cfefp_webhook_conditionally'
wp option delete 'cfefp_whatsapp_conditionally'
wp option delete 'cfkef_geo_provider'
wp option delete 'cfkef_country_code_api_key'
wp option delete 'cfkef_country_code_non_ipapi_api_key'
wp option delete 'cfefp_cdn_image'
wp option delete 'cfefp_cloudflare_site_key'
wp option delete 'cfefp_cloudflare_secret_key'
wp option delete 'cfefp_h_site_key'
wp option delete 'cfefp_h_secret_key'
wp option delete 'eef-v'
wp option delete 'eef-type'
wp option delete 'eef-installDate'
wp option delete 'ccfef_review_notice_dismiss'
wp option delete 'cfkef_elementor_notice_dismiss'

# Clear Cron Jobs
wp cron event delete 'cfl_extra_data_update'
wp cron event delete 'cfefp_extra_data_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cfkef_form_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cfkef_form_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cfkef_form_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cfkef_form_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cfkef_form_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cfkef_form_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cfkef_form_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cfkef_form_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cfkef_form_entry_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cfkef_form_entry_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cfkef_form_entry_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cfkef_form_entry_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cfkef_form_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cfkef_form_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cfkef_form_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cfkef_form_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cfkef_element_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cfkef_element_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cfkef_element_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cfkef_element_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cfkef_user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cfkef_user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cfkef_user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cfkef_user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cfkef_form_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cfkef_form_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cfkef_form_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cfkef_form_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cfkef_form_action_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cfkef_form_action_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cfkef_form_action_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cfkef_form_action_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cfkef_entry_view_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cfkef_entry_view_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cfkef_entry_view_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cfkef_entry_view_status'"
