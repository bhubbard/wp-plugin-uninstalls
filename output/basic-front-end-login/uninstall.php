<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eeBFEL_ShowLogout');
delete_site_option('eeBFEL_ShowLogout');
delete_option('eeBFEL_Redirect');
delete_site_option('eeBFEL_Redirect');
delete_option('eeBFEL_DenyRoles');
delete_site_option('eeBFEL_DenyRoles');

