<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gtg_install_time');
delete_site_option('gtg_install_time');
delete_option('gtg_review_dismissed');
delete_site_option('gtg_review_dismissed');

