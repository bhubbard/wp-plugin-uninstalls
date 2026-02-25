<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('ss_wc_mailchimp_dismissed_notices');
delete_site_transient('ss_wc_mailchimp_dismissed_notices');
delete_transient('sswcmc_lists');
delete_site_transient('sswcmc_lists');
delete_transient('sswcmc_list_web_ids');
delete_site_transient('sswcmc_list_web_ids');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

