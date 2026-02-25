<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('source_admin');
delete_site_option('source_admin');
delete_option('sdn_gravatar');
delete_site_option('sdn_gravatar');

