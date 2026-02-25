<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('your_own_logo_ng_custom_login_logo_url');
delete_site_option('your_own_logo_ng_custom_login_logo_url');

