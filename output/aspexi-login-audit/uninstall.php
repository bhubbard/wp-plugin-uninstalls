<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aspexiloginaudit_options');
delete_site_option('aspexiloginaudit_options');
delete_option('aspexiloginaudit_login_info');
delete_site_option('aspexiloginaudit_login_info');

