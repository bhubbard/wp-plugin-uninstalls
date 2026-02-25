<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dbrdify_adminbar_logo');
delete_site_option('dbrdify_adminbar_logo');
delete_option('dbrdify_installBanner');
delete_site_option('dbrdify_installBanner');
delete_option('dbrdify_installDate');
delete_site_option('dbrdify_installDate');
delete_option('dbrdify_usedNotice');
delete_site_option('dbrdify_usedNotice');
delete_option('dbrdify_prioritise');
delete_site_option('dbrdify_prioritise');

