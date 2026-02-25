<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qev_email_validator');
delete_site_option('qev_email_validator');
delete_option('QEV_PLUGIN_VER');
delete_site_option('QEV_PLUGIN_VER');

