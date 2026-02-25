<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yvk_login_styler_settings');
delete_site_option('yvk_login_styler_settings');
delete_option('yvk_login_styler_installDate');
delete_site_option('yvk_login_styler_installDate');

