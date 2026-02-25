<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pd_default_color');
delete_site_option('pd_default_color');
delete_option('pd_default_color_array');
delete_site_option('pd_default_color_array');
delete_option('pd_latestpoll');
delete_site_option('pd_latestpoll');
delete_option('pd_recaptcha_enable');
delete_site_option('pd_recaptcha_enable');
delete_option('pd_recaptcha_sitekey');
delete_site_option('pd_recaptcha_sitekey');
delete_option('pd_recaptcha_secretkey');
delete_site_option('pd_recaptcha_secretkey');
delete_option('pd_currentpoll');
delete_site_option('pd_currentpoll');
delete_option('pd_close');
delete_site_option('pd_close');
delete_option('pd_logging_method');
delete_site_option('pd_logging_method');
delete_option('pd_cookielog_expiry');
delete_site_option('pd_cookielog_expiry');
delete_option('pd_allowtovote');
delete_site_option('pd_allowtovote');
delete_option('pd_bar');
delete_site_option('pd_bar');
delete_option('pd_ans_sortby');
delete_site_option('pd_ans_sortby');
delete_option('pd_ans_sortorder');
delete_site_option('pd_ans_sortorder');
delete_option('pd_ans_result_sortby');
delete_site_option('pd_ans_result_sortby');
delete_option('pd_ans_result_sortorder');
delete_site_option('pd_ans_result_sortorder');
delete_option('poll_template_disable');
delete_site_option('poll_template_disable');
delete_option('poll_cookielog_expiry');
delete_site_option('poll_cookielog_expiry');

// Clear Cron Jobs
wp_clear_scheduled_hook('poll_dude_cron');

