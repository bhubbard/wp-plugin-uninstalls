<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dbprefix_old_dbprefix');
delete_site_option('dbprefix_old_dbprefix');
delete_option('dbprefix_new');
delete_site_option('dbprefix_new');

