<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('securiti_install_date');
delete_site_option('securiti_install_date');
delete_option('securiti_hide_review_notice');
delete_site_option('securiti_hide_review_notice');
delete_option('securiti_notice_update_date');
delete_site_option('securiti_notice_update_date');

