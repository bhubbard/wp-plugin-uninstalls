<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('top-spammers_blacklist');
delete_site_option('top-spammers_blacklist');
delete_option('top-spammers_version');
delete_site_option('top-spammers_version');

