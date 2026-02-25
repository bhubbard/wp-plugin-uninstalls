<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sfcd_installDate');
delete_site_option('sfcd_installDate');
delete_option('sfcd_review_notify');
delete_site_option('sfcd_review_notify');

// Delete Transients
delete_transient('_sfcd_redirect_welcome');
delete_site_transient('_sfcd_redirect_welcome');

