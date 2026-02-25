<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpgraphql_send_mail_settings');
delete_site_option('wpgraphql_send_mail_settings');

