<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mwm_variable_font_admin_notice_default');
delete_site_option('mwm_variable_font_admin_notice_default');

