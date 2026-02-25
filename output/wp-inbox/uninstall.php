<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inboxWebmail_version');
delete_site_option('inboxWebmail_version');
delete_option('inboxWebmail_dbVersion');
delete_site_option('inboxWebmail_dbVersion');

