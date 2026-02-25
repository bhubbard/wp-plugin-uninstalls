<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scc_code');
delete_site_option('scc_code');
delete_option('scc_notice_update_date');
delete_site_option('scc_notice_update_date');
delete_option('scc_hide_review_notice');
delete_site_option('scc_hide_review_notice');

