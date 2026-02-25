<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcpp_later');
delete_site_option('wcpp_later');
delete_option('wcpp_vote');
delete_site_option('wcpp_vote');

