<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('category_archives_showMonthOrYear');
delete_site_option('category_archives_showMonthOrYear');

