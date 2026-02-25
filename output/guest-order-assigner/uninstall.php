<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('goa_promo_notice_dismissed');
delete_site_option('goa_promo_notice_dismissed');

