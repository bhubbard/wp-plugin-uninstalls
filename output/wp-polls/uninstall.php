<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('poll_latestpoll');
delete_site_option('poll_latestpoll');
delete_option('poll_currentpoll');
delete_site_option('poll_currentpoll');
delete_option('poll_bar');
delete_site_option('poll_bar');
delete_option('poll_ajax_style');
delete_site_option('poll_ajax_style');
delete_option('poll_ans_sortby');
delete_site_option('poll_ans_sortby');
delete_option('poll_ans_sortorder');
delete_site_option('poll_ans_sortorder');
delete_option('poll_ans_result_sortby');
delete_site_option('poll_ans_result_sortby');
delete_option('poll_ans_result_sortorder');
delete_site_option('poll_ans_result_sortorder');
delete_option('poll_archive_perpage');
delete_site_option('poll_archive_perpage');
delete_option('poll_archive_displaypoll');
delete_site_option('poll_archive_displaypoll');
delete_option('poll_archive_url');
delete_site_option('poll_archive_url');
delete_option('poll_close');
delete_site_option('poll_close');
delete_option('poll_logging_method');
delete_site_option('poll_logging_method');
delete_option('poll_cookielog_expiry');
delete_site_option('poll_cookielog_expiry');
delete_option('poll_allowtovote');
delete_site_option('poll_allowtovote');
delete_option('poll_options');
delete_site_option('poll_options');
delete_option('poll_template_voteheader');
delete_site_option('poll_template_voteheader');
delete_option('poll_template_votebody');
delete_site_option('poll_template_votebody');
delete_option('poll_template_votefooter');
delete_site_option('poll_template_votefooter');
delete_option('poll_template_resultheader');
delete_site_option('poll_template_resultheader');
delete_option('poll_template_resultbody');
delete_site_option('poll_template_resultbody');
delete_option('poll_template_resultbody2');
delete_site_option('poll_template_resultbody2');
delete_option('poll_template_resultfooter');
delete_site_option('poll_template_resultfooter');
delete_option('poll_template_resultfooter2');
delete_site_option('poll_template_resultfooter2');
delete_option('poll_template_pollarchivelink');
delete_site_option('poll_template_pollarchivelink');
delete_option('poll_template_pollarchiveheader');
delete_site_option('poll_template_pollarchiveheader');
delete_option('poll_template_pollarchivefooter');
delete_site_option('poll_template_pollarchivefooter');
delete_option('poll_template_pollarchivepagingheader');
delete_site_option('poll_template_pollarchivepagingheader');
delete_option('poll_template_pollarchivepagingfooter');
delete_site_option('poll_template_pollarchivepagingfooter');
delete_option('poll_template_disable');
delete_site_option('poll_template_disable');
delete_option('poll_template_error');
delete_site_option('poll_template_error');
delete_option('stats_display');
delete_site_option('stats_display');
delete_option('poll_archive_show');
delete_site_option('poll_archive_show');

// Clear Cron Jobs
wp_clear_scheduled_hook('polls_cron');

