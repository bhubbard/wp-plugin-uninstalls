<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailup_version');
delete_site_option('mailup_version');
delete_option('mailup');
delete_site_option('mailup');

