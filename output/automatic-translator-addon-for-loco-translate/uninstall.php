<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpfm_opt_in_choice_cool_translations');
delete_site_option('cpfm_opt_in_choice_cool_translations');
delete_option('atlt_feedback_opt_in');
delete_site_option('atlt_feedback_opt_in');
delete_option('cpt_dashboard_data');
delete_site_option('cpt_dashboard_data');
delete_option('cpt_review_notice_dismissed');
delete_site_option('cpt_review_notice_dismissed');
delete_option('atlt-install-date');
delete_site_option('atlt-install-date');
delete_option('atlt_initial_save_version');
delete_site_option('atlt_initial_save_version');
delete_option('atlt-already-rated');
delete_site_option('atlt-already-rated');
delete_option('atlt-ratingDiv');
delete_site_option('atlt-ratingDiv');
delete_option('atlt-pro-version');
delete_site_option('atlt-pro-version');
delete_option('atlt_do_activation_redirect');
delete_site_option('atlt_do_activation_redirect');
delete_option('atlt-version');
delete_site_option('atlt-version');
delete_option('atlt-installDate');
delete_site_option('atlt-installDate');
delete_option('atlt-type');
delete_site_option('atlt-type');

// Delete Transients
delete_transient('loco_current_translation');
delete_site_transient('loco_current_translation');

// Clear Cron Jobs
wp_clear_scheduled_hook('atlt_extra_data_update');

