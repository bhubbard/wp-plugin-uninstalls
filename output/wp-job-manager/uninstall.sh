#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcom_active_subscriptions'
wp option delete 'job_manager_terms_and_conditions_page_id'
wp option delete 'wp_job_manager_applications_version'
wp option delete 'job_manager_addon_upsell_applications'
wp option delete 'wp_resume_manager_version'
wp option delete 'job_manager_addon_upsell_resumes'
wp option delete 'job_manager_enable_categories'
wp option delete 'job_manager_enable_types'
wp option delete 'job_manager_hide_expired_content'
wp option delete 'job_manager_allowed_application_method'
wp option delete 'job_manager_submission_duration'
wp option delete 'job_manager_renewal_days'
wp option delete 'job_manager_job_dashboard_page_id'
wp option delete 'job_manager_enable_scheduled_listings'
wp option delete 'job_manager_per_page'
wp option delete 'job_manager_bypass_trash_on_uninstall'
wp option delete 'job_manager_submit_job_form_page_id'
wp option delete 'job_manager_jobs_page_id'
wp option delete 'job_manager_google_maps_api_key'
wp option delete 'wp_job_manager_version'
wp option delete 'job_manager_submit_page_slug'
wp option delete 'job_manager_job_dashboard_page_slug'
wp option delete 'job_manager_permalinks'
wp option delete 'job_manager_installed_terms'
wp option delete 'job_manager_strip_job_description_shortcodes'
wp option delete 'job_manager_hide_filled_positions'
wp option delete 'job_manager_category_filter_type'
wp option delete 'wpjm_permalinks'
wp option delete 'job_manager_enable_remote_position'
wp option delete 'job_manager_enable_salary'
wp option delete 'job_manager_enable_salary_currency'
wp option delete 'job_manager_enable_salary_unit'
wp option delete 'job_manager_recaptcha_label'
wp option delete 'job_manager_submission_limit'
wp option delete 'job_manager_enable_default_category_multiselect'
wp option delete 'job_manager_job_listing_pagination_type'
wp option delete 'job_manager_email_admin_expiring_job'
wp option delete 'job_manager_email_admin_new_job'
wp option delete 'job_manager_email_admin_updated_job'
wp option delete 'job_manager_paid_listings_flow'
wp option delete 'job_manager_show_agreement_job_submission'
wp option delete 'job_manager_registration_role'
wp option delete 'job_manager_submission_requires_approval'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'job_manager_previous_license_%'"
wp option delete 'job_manager_recaptcha_site_key'
wp option delete 'job_manager_delete_data_on_uninstall'
wp option delete 'job_manager_hide_expired'
wp option delete 'job_manager_use_standard_password_setup_email'
wp option delete 'job_manager_multi_job_type'
wp option delete 'job_manager_enable_registration'
wp option delete 'job_manager_generate_username_from_email'
wp option delete 'job_manager_user_requires_account'
wp option delete 'job_manager_user_can_edit_pending_submissions'
wp option delete 'job_manager_user_edit_published_submissions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"
wp option delete 'job_manager_browse_job_listings_capability'
wp option delete 'job_manager_view_job_listing_capability'
wp option delete 'job_manager_date_format'
wp option delete 'job_manager_display_location_address'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_crop'"
wp option delete 'job_manager_default_salary_currency'
wp option delete 'job_manager_default_salary_unit'

# Delete Transients
wp transient delete 'jm_wpjmcom_add_on_categories'
wp transient delete 'wpjm_addon_updates_available'
wp transient delete 'jm_geocode_over_query_limit'
wp transient delete 'wp_job_manager_addons_html'
wp transient delete 'wpjm_helper_updates'

# Clear Cron Jobs
wp cron event delete 'job_manager_clear_expired_transients'
wp cron event delete 'job_manager_check_for_expired_jobs'
wp cron event delete 'job_manager_delete_old_previews'
wp cron event delete 'job_manager_email_daily_notices'
wp cron event delete 'job_manager_promoted_jobs_notification'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_submitting_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_submitting_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_submitting_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_submitting_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_filled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_filled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_filled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_filled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'employment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'employment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'employment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'employment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_edited'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_edited'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_edited'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_edited'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geolocated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geolocated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geolocated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geolocated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geolocation_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geolocation_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geolocation_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geolocation_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geolocation_country_long'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geolocation_country_long'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geolocation_country_long'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geolocation_country_long'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geolocation_country_short'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geolocation_country_short'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geolocation_country_short'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geolocation_country_short'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geolocation_formatted_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geolocation_formatted_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geolocation_formatted_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geolocation_formatted_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geolocation_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geolocation_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geolocation_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geolocation_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geolocation_long'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geolocation_long'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geolocation_long'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geolocation_long'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geolocation_state_long'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geolocation_state_long'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geolocation_state_long'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geolocation_state_long'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geolocation_state_short'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geolocation_state_short'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geolocation_state_short'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geolocation_state_short'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geolocation_street'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geolocation_street'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geolocation_street'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geolocation_street'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geolocation_street_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geolocation_street_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geolocation_street_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geolocation_street_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geolocation_zipcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geolocation_zipcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geolocation_zipcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geolocation_zipcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geolocation_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geolocation_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geolocation_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geolocation_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'geolocation_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'geolocation_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'geolocation_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'geolocation_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_public_submission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_public_submission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_public_submission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_public_submission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tracked_submitted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tracked_submitted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tracked_submitted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tracked_submitted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tracked_approved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tracked_approved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tracked_approved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tracked_approved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_tagline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_tagline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_tagline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_tagline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_schedule_listing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_schedule_listing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_schedule_listing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_schedule_listing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_remote_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_remote_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_remote_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_remote_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_salary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_salary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_salary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_salary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_duration'"
