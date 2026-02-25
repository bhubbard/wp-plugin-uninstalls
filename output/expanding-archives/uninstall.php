<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('expanding_archives_months');
delete_site_transient('expanding_archives_months');
delete_transient('expanding_archives_current_month_posts');
delete_site_transient('expanding_archives_current_month_posts');

