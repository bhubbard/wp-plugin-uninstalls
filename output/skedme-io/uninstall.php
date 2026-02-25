<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('skedmeKey');
delete_site_option('skedmeKey');
delete_option('skedmeSide');
delete_site_option('skedmeSide');
delete_option('skedmeTheme');
delete_site_option('skedmeTheme');
delete_option('skedmeMargin');
delete_site_option('skedmeMargin');
delete_option('skedmeSize');
delete_site_option('skedmeSize');
delete_option('skedmeShape');
delete_site_option('skedmeShape');

