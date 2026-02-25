<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('otys_option_document_template_confirm_jobalert');
delete_site_option('otys_option_document_template_confirm_jobalert');
delete_option('otys_option_jobalert_filters');
delete_site_option('otys_option_jobalert_filters');
delete_option('otys_option_language_routes');
delete_site_option('otys_option_language_routes');
delete_option('otys_option_api_key');
delete_site_option('otys_option_api_key');
delete_option('otys_option_recaptcha_site_key');
delete_site_option('otys_option_recaptcha_site_key');
delete_option('otys_option_recaptcha_secret_key');
delete_site_option('otys_option_recaptcha_secret_key');
delete_option('otys_option_website');
delete_site_option('otys_option_website');
delete_option('otys_option_is_production_website');
delete_site_option('otys_option_is_production_website');
delete_option('otys_option_vacancies_filters_match_criteria');
delete_site_option('otys_option_vacancies_filters_match_criteria');
delete_option('otys_option_vacancies_list_match_criteria_labels');
delete_site_option('otys_option_vacancies_list_match_criteria_labels');
delete_option('otys_option_vacancies_detail_match_criteria_labels');
delete_site_option('otys_option_vacancies_detail_match_criteria_labels');
delete_option('otys_option_document_template_apply_notify_candidate');
delete_site_option('otys_option_document_template_apply_notify_candidate');
delete_option('otys_option_document_template_apply_notify_new_candidate');
delete_site_option('otys_option_document_template_apply_notify_new_candidate');
delete_option('otys_option_document_template_open_apply_notify_candidate');
delete_site_option('otys_option_document_template_open_apply_notify_candidate');
delete_option('otys_option_document_template_apply_confirm_email');
delete_site_option('otys_option_document_template_apply_confirm_email');
delete_option('otys_option_document_template_apply_notify_consultant');
delete_site_option('otys_option_document_template_apply_notify_consultant');
delete_option('otys_option_document_template_open_apply_notify_consultant');
delete_site_option('otys_option_document_template_open_apply_notify_consultant');
delete_option('otys_option_vacancies_per_page');
delete_site_option('otys_option_vacancies_per_page');
delete_option('otys_option_vacancies_options_sorting');
delete_site_option('otys_option_vacancies_options_sorting');
delete_option('otys_option_use_mobile_questionset');
delete_site_option('otys_option_use_mobile_questionset');
delete_option('otys_option_recaptcha_threshold');
delete_site_option('otys_option_recaptcha_threshold');
delete_option('otys_option_email_open_apply_consultant_email');
delete_site_option('otys_option_email_open_apply_consultant_email');
delete_option('otys_option_vacancies_header_falllback');
delete_site_option('otys_option_vacancies_header_falllback');
delete_option('otys_option_meta_description_textfield');
delete_site_option('otys_option_meta_description_textfield');
delete_option('otys_option_system_mails_from_owner');
delete_site_option('otys_option_system_mails_from_owner');
delete_option('otys_option_pagination_max_pages');
delete_site_option('otys_option_pagination_max_pages');
delete_option('otys_option_pagination_buttons_prev_next');
delete_site_option('otys_option_pagination_buttons_prev_next');
delete_option('otys_option_pagination_buttons_prev_icon');
delete_site_option('otys_option_pagination_buttons_prev_icon');
delete_option('otys_option_pagination_buttons_next_icon');
delete_site_option('otys_option_pagination_buttons_next_icon');
delete_option('otys_option_pagination_buttons_first_last');
delete_site_option('otys_option_pagination_buttons_first_last');
delete_option('otys_option_pagination_buttons_first_icon');
delete_site_option('otys_option_pagination_buttons_first_icon');
delete_option('otys_option_pagination_buttons_last_icon');
delete_site_option('otys_option_pagination_buttons_last_icon');
delete_option('otys_option_show_candidate_login_link_at_form');
delete_site_option('otys_option_show_candidate_login_link_at_form');
delete_option('otys_option_use_known_candidate_questionset');
delete_site_option('otys_option_use_known_candidate_questionset');
delete_option('otys_option_document_template_forgot_password');
delete_site_option('otys_option_document_template_forgot_password');
delete_option('otys_option_webhook_url');
delete_site_option('otys_option_webhook_url');
delete_option('otys_option_created_standard_documents');
delete_site_option('otys_option_created_standard_documents');
delete_option('otys_option_candidate_authentication_routes');
delete_site_option('otys_option_candidate_authentication_routes');
delete_option('otys_plugin_version');
delete_site_option('otys_plugin_version');

// Delete Transients
delete_transient('otys_updater');
delete_site_transient('otys_updater');
delete_transient('otys_check_session');
delete_site_transient('otys_check_session');

// Clear Cron Jobs
wp_clear_scheduled_hook('otys_cache_cron');
wp_clear_scheduled_hook('otys_log_cron');

