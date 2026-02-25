#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'srfm_general_settings_options'
wp option delete 'classic-editor-replace'
wp option delete 'et_enable_classic_editor'
wp option delete 'srfm_options'
wp option delete 'srfm_ai_auth_user_email'
wp option delete 'srfm_pro_license_status'
wp option delete 'srfm_enable_quick_action_sidebar'
wp option delete 'srfm_quick_sidebar_allowed_blocks'
wp option delete 'srfm_security_settings_options'
wp option delete 'srfm_email_summary_settings_options'
wp option delete 'bsf_product_referers'
wp option delete 'srfm_default_dynamic_block_option'
wp option delete 'rewrite_rules'
wp option delete '__srfm_do_redirect'
wp option delete 'sureforms_usage_optin'
wp option delete 'srfm_database_table_versions'
wp option delete 'suretrigger_options'
wp option delete 'active_sitewide_plugins'
wp option delete 'allowed_astra_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_optin'"
wp option delete 'bsf_usage_last_displayed_time'
wp option delete 'bsf_usage_migrated'
wp option delete 'bsf_analytics_last_displayed_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_installed_time'"
wp option delete 'get_default_dynamic_block_option'
wp option delete 'srfm-version'
wp option delete '__sureforms_do_redirect'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp transient delete 'bsf_analytics_track'
wp transient delete 'bsf_usage_track'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_srfm_stripe_connect_nonce_%' OR option_name LIKE '_site_transient_srfm_stripe_connect_nonce_%'"

# Clear Cron Jobs
wp cron event delete 'srfm_weekly_scheduled_events'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_astra_sites_imported_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_astra_sites_imported_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_astra_sites_imported_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_astra_sites_imported_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_srfm_is_ai_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_srfm_is_ai_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_srfm_is_ai_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_srfm_is_ai_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_srfm_compliance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_srfm_compliance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_srfm_compliance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_srfm_compliance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_srfm_block_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_srfm_block_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_srfm_block_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_srfm_block_config'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_srfm_page_break_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_srfm_page_break_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_srfm_page_break_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_srfm_page_break_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_srfm_form_restriction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_srfm_form_restriction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_srfm_form_restriction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_srfm_form_restriction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_srfm_conversational_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_srfm_conversational_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_srfm_conversational_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_srfm_conversational_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_srfm_form_recaptcha'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_srfm_form_recaptcha'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_srfm_form_recaptcha'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_srfm_form_recaptcha'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_srfm_email_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_srfm_email_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_srfm_email_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_srfm_email_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_srfm_forms_styling'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_srfm_forms_styling'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_srfm_forms_styling'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_srfm_forms_styling'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_srfm_form_confirmation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_srfm_form_confirmation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_srfm_form_confirmation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_srfm_form_confirmation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_srfm_instant_form_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_srfm_instant_form_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_srfm_instant_form_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_srfm_instant_form_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_srfm_use_label_as_placeholder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_srfm_use_label_as_placeholder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_srfm_use_label_as_placeholder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_srfm_use_label_as_placeholder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'srfm_stripe_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'srfm_stripe_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'srfm_stripe_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'srfm_stripe_customer_id'"
