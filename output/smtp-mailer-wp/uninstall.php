<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('krut1_smtp_mailer_options');
delete_site_option('krut1_smtp_mailer_options');

