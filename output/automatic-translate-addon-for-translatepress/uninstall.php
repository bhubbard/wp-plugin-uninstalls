<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tpa_feedback_opt_in');
delete_site_option('tpa_feedback_opt_in');
delete_option('tpa-install-date');
delete_site_option('tpa-install-date');
delete_option('tpa_initial_save_version');
delete_site_option('tpa_initial_save_version');
delete_option('cpt_dashboard_data');
delete_site_option('cpt_dashboard_data');
delete_option('cpt_review_notice_dismissed');
delete_site_option('cpt_review_notice_dismissed');
delete_option('tpa_provider_yandex_enabled');
delete_site_option('tpa_provider_yandex_enabled');
delete_option('tpa_provider_chrome_enabled');
delete_site_option('tpa_provider_chrome_enabled');
delete_option('cpfm_opt_in_choice_cool_translations');
delete_site_option('cpfm_opt_in_choice_cool_translations');
delete_option('trp_settings');
delete_site_option('trp_settings');
delete_option('tpa_chrome_ai_bypass_api_check');
delete_site_option('tpa_chrome_ai_bypass_api_check');
delete_option('tpa_chrome_ai_bypass_secure_check');
delete_site_option('tpa_chrome_ai_bypass_secure_check');
delete_option('tpa_chrome_ai_bypass_browser_check');
delete_site_option('tpa_chrome_ai_bypass_browser_check');
delete_option('tpa_do_activation_redirect');
delete_site_option('tpa_do_activation_redirect');
delete_option('tpa-v');
delete_site_option('tpa-v');
delete_option('tpa-type');
delete_site_option('tpa-type');
delete_option('tpa-installDate');
delete_site_option('tpa-installDate');
delete_option('tpa-ratingDiv');
delete_site_option('tpa-ratingDiv');
delete_option('tpa_chrome_ai_bypass_security_check');
delete_site_option('tpa_chrome_ai_bypass_security_check');

// Clear Cron Jobs
wp_clear_scheduled_hook('tpa_extra_data_update');

