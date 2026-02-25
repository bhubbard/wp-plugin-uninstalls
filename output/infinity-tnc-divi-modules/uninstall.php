<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('inftnc_black_friday_notice_dismissed');
delete_site_transient('inftnc_black_friday_notice_dismissed');

