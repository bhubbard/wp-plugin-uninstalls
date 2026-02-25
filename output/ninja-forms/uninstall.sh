#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ninja_forms_doing_required_updates'
wp option delete 'ninja_forms_required_updates'
wp option delete 'ninja_forms_needs_updates'
wp option delete 'ninja_forms_db_version'
wp option delete 'ninja_forms_addons_feed'
wp option delete 'nf_aff'
wp option delete 'ninja_forms_allow_tracking'
wp option delete 'ninja_forms_do_not_allow_tracking'
wp option delete 'nf_active_promotions'
wp option delete 'nf_form_tel_sent'
wp option delete 'ninja_forms_submissions_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'ninja_forms_settings'
wp option delete 'nf_admin_notice'
wp option delete 'nf_sub_expiration'
wp option delete 'nf_expired_submissions'
wp option delete 'nf_import_form'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nf_doing_%'"
wp option delete 'ninja_forms_disable_survey_promo'
wp option delete 'nf_form_tel_data'
wp option delete 'nf_tel_collate'
wp option delete 'ninja_forms_load_deprecated'
wp option delete 'ninja_forms_mailchimp_interests'
wp option delete 'ninja_forms_oauth_client_secret'
wp option delete 'ninja_forms_optin_reported'
wp option delete 'ninja_forms_transactional_email_enabled'
wp option delete 'ninja_forms_version'
wp option delete 'nf_upgrade_notice'
wp option delete 'nf_converted_subs'
wp option delete 'nf_converted_forms'
wp option delete 'nf_convert_subs_num'
wp option delete 'nf_convert_subs_step'
wp option delete 'nf_email_fav_updated'
wp option delete 'nf_database_migrations'
wp option delete 'nf_converted_form_reset'
wp option delete 'nf_version_upgraded_from'
wp option delete 'nf_convert_forms_complete'
wp option delete 'nf_convert_notifications_forms'
wp option delete 'nf_convert_notifications_complete'
wp option delete 'nf_update_email_settings_complete'
wp option delete 'nf_be_data'
wp option delete 'ninja_forms_zuul'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nf_form_%'"
wp option delete 'ninja_forms_cache_mode'
wp option delete '_site_transient_update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_wp_session_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_wp_session_expires_%'"
wp option delete 'ninja_forms_optin_email_recovered'
wp option delete 'ninja_forms_optin_email'
wp option delete 'ninja_forms_oauth_client_id'

# Delete Transients
wp transient delete 'nf_bad_update_requirement'
wp transient delete 'ninja_forms_disable_slim_promo'
wp transient delete 'ninja_forms_disable_survey_promo'
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'nf_dismiss_php_version_whip'
wp transient delete 'ninja_forms_prevent_updates'

# Clear Cron Jobs
wp cron event delete 'ninja_forms_views_check_rotation'
wp cron event delete 'ninja_forms_daily_action'
wp cron event delete 'nf_submission_expiration_cron'
wp cron event delete 'wp_session_garbage_collection'
wp cron event delete 'nf_weekly_promotion_update'
wp cron event delete 'nf_optin_cron'
wp cron event delete 'nf_marketing_feed_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nf_onboarding'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nf_onboarding'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nf_onboarding'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nf_onboarding'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nf_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nf_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nf_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nf_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nf_anonymize_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nf_anonymize_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nf_anonymize_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nf_anonymize_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ninja_forms_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ninja_forms_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ninja_forms_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ninja_forms_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_field_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_field_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_field_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_field_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seq_num'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seq_num'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seq_num'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seq_num'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
