#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'church_admin_people_type'
wp option delete 'church_admin_levels'
wp option delete 'church_admin_debug_mode'
wp option delete 'church_admin_new_licence'
wp option delete 'church_admin_bulk_email_method'
wp option delete 'church_admin_admin_approval_required'
wp option delete 'church_admin_new_entry_admin_email'
wp option delete 'church_admin_default_from_email'
wp option delete 'church_admin_licence_checked'
wp option delete 'church_admin_version'
wp option delete 'church-admin-directory-output'
wp option delete 'church_admin_plugin_error'
wp option delete 'church_admin_google_api_key'
wp option delete 'church_admin_app_new_licence'
wp option delete 'church_admin_calendar_width'
wp option delete 'church-admin-restricted-access'
wp option delete 'church_admin_happy_birthday_arguments'
wp option delete 'cron'
wp option delete 'church_admin_bulk_email'
wp option delete 'church_admin_default_from_name'
wp option delete 'church_admin_no_push'
wp option delete 'church-admin-private-prayer-requests'
wp option delete 'church_admin_mailersend_api_key'
wp option delete 'church-admin-no-prayer'
wp option delete 'church_admin_app_gutenberg'
wp option delete 'church-admin-no-bible-readings'
wp option delete 'church-admin-acts-of-courage'
wp option delete 'church_admin_bible_version'
wp option delete 'church_admin_kiosk_app_form'
wp option delete 'church_admin_app_address_cache'
wp option delete 'church_admin_app_admin_address_cache'
wp option delete 'dismissed-small-churches-offer-dismissed'
wp option delete 'dismissed-church-admin-free-version'
wp option delete 'dismissed-church-admin-roles-permissions'
wp option delete 'dismissed-church-admin-please-review'
wp option delete 'dismissed-church-admin-email-settings'
wp option delete 'dismissed-church-admin-set-sermon-page'
wp option delete 'dismissed-church-admin-bible-version'
wp option delete 'dismissed-church-admin-app'
wp option delete 'dismissed-church-admin-gdpr'
wp option delete 'church-admin-favourites'
wp option delete 'church-admin-favourites-v2'
wp option delete 'church_admin_app_new_menu'
wp option delete 'church_admin_app_logo'
wp option delete 'prayer-request-moderation'
wp option delete 'church_admin_prayer_request_receive_push_to_admin'
wp option delete 'church_admin_login_redirect'
wp option delete 'church_admin_sermon_page'
wp option delete 'church-admin-sermon-page'
wp option delete 'church_admin_followup_email_template'
wp option delete 'church_admin_happy_birthday_template'
wp option delete 'church_admin_global_birthday_template'
wp option delete 'church_admin_happy_anniversary_template'
wp option delete 'church_admin_global_anniversary_template'
wp option delete 'church_admin_global_both_template'
wp option delete 'church_admin_custom_fields_automations'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'church_admin_transient_custom_id%'"
wp option delete 'church_admin_use_titles'
wp option delete 'church_admin_pagination_limit'
wp option delete 'ca_podcast_settings'
wp option delete 'church_admin_podcast_settings'
wp option delete 'church_admin_modules'
wp option delete 'church_admin_new_app_licence'
wp option delete 'church_admin_global_birthday_arguments'
wp option delete 'church_admin_happy_anniversary_arguments'
wp option delete 'church_admin_global_anniversary_arguments'
wp option delete 'church_admin_global_both_arguments'
wp option delete 'blog_name'
wp option delete 'church_admin_gender'
wp option delete 'addressUpdated'
wp option delete 'church_admin_marital_status'
wp option delete 'church_admin_what_three_words'
wp option delete 'church_admin_what_three_words_language'
wp option delete 'church_admin_show_wedding_anniversary'
wp option delete 'church_admin_titles'
wp option delete 'church_admin_use_middle_name'
wp option delete 'church_admin_use_nickname'
wp option delete 'church_admin_use_prefix'
wp option delete 'church_admin_gdpr'
wp option delete 'church_admin_register'
wp option delete 'church_admin_confirm_email_template'
wp option delete 'church_admin_pdf_size'
wp option delete 'church_admin_modified_app_content'
wp option delete 'church_admin_sms_provider'
wp option delete 'church_admin_transient_wedding_anniversary_update'
wp option delete 'church_admin_transient_date_of_birth_update'
wp option delete 'church_admin_page_limit'
wp option delete 'church_admin_feedburner'
wp option delete 'church_admin_twitter'
wp option delete 'church_admin_facebook'
wp option delete 'church_admin_email_image'
wp option delete 'church_admin_payment_gateway'
wp option delete 'church_admin_member_type_id_for_registrations'
wp option delete 'church_admin_smtp_settings'
wp option delete 'church_admin_user_permissions'
wp option delete 'church_admin_trial'
wp option delete 'church_admin_app_id'
wp option delete 'church_admin_sms_iso'
wp option delete 'church_admin_use_title'
wp option delete 'church_admin_username_style'
wp option delete 'church_admin_user_created_email'
wp option delete 'church_admin_user_created_email_subject'
wp option delete 'church_admin_custom_wedding_anniversary'
wp option delete 'church_admin_cron'
wp option delete 'church_admin_custom_fields'
wp option delete 'church_Admin_levels'
wp option delete 'church_admin_label'
wp option delete 'ca_podcast_file_template'
wp option delete 'ca_podcast_series_template'
wp option delete 'ca_podcast_speaker_template'
wp option delete 'church-admin-socials'
wp option delete 'church_admin_prayer_login'
wp option delete 'church-admin-marital_status'
wp option delete 'church-admin-marital-status'
wp option delete 'church_admin_gdpr_email'
wp option delete 'church_admin_transactional_email_method'
wp option delete 'church_admin_email_method'
wp option delete 'church_admin_mailchimp'
wp option delete 'church_admin_roles'
wp option delete 'church_admin_departments'
wp option delete 'church_admin_services'
wp option delete 'church_admin_pdf_title'
wp option delete 'church_admin_cron_path'
wp option delete 'church_admin_latest_sermons_widget'
wp option delete 'church_admin_mailchimp_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%user_roles'"
wp option delete 'church_admin_register_page'
wp option delete 'church_admin_prayer_request_message'
wp option delete 'church-admin-which-filters'

# Clear Cron Jobs
wp cron event delete 'church_admin_happy_birthday_email'
wp cron event delete 'church_admin_global_birthday_email'
wp cron event delete 'church_admin_happy_anniversary_email'
wp cron event delete 'church_admin_global_anniversary_email'
wp cron event delete 'church_admin_global_birthday_and_anniversary_email'
wp cron event delete 'church_admin_followup_email'
wp cron event delete 'church_admin_custom_fields_automations'
wp cron event delete 'church_admin_bulk_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Email Sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Email Sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Email Sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Email Sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bible-passage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bible-passage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bible-passage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bible-passage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'asp_sermon_vimeo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'asp_sermon_vimeo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'asp_sermon_vimeo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'asp_sermon_vimeo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'asp_sermon_youtube'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'asp_sermon_youtube'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'asp_sermon_youtube'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'asp_sermon_youtube'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'asp_sermon_mp4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'asp_sermon_mp4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'asp_sermon_mp4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'asp_sermon_mp4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'asp_sermon_bible_passage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'asp_sermon_bible_passage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'asp_sermon_bible_passage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'asp_sermon_bible_passage'"
