<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rumailer_setting_api');
delete_site_option('rumailer_setting_api');
delete_option('rumailer_setting_name');
delete_site_option('rumailer_setting_name');
delete_option('rumailer_setting_email');
delete_site_option('rumailer_setting_email');

