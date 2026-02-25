<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vcita_scheduler');
delete_site_option('vcita_scheduler');
delete_option('wpshd_vcita_redirect_needed');
delete_site_option('wpshd_vcita_redirect_needed');

