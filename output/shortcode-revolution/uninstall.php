<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('srevo_custom_css');
delete_site_option('srevo_custom_css');
delete_option('srevo_locale_url');
delete_site_option('srevo_locale_url');
delete_option('srevo_datepicker_css');
delete_site_option('srevo_datepicker_css');
delete_option('srevo_version');
delete_site_option('srevo_version');

