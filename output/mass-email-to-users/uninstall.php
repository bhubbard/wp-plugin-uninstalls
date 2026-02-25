<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mass_email_succ');
delete_site_option('mass_email_succ');
delete_option('mass_email_err');
delete_site_option('mass_email_err');

