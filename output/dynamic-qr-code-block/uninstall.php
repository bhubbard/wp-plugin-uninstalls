<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dqcb_settings');
delete_site_option('dqcb_settings');
delete_option('dqcb_install_date');
delete_site_option('dqcb_install_date');
delete_option('dqcb_review_notice_dismissed_permanently');
delete_site_option('dqcb_review_notice_dismissed_permanently');
delete_option('dqcb_review_notice_dismissed_time');
delete_site_option('dqcb_review_notice_dismissed_time');

