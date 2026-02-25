<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ZPT_LAST_USED_TITLE');
delete_site_option('ZPT_LAST_USED_TITLE');

