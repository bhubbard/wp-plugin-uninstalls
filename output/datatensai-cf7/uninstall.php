<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('datatensai_locale_url');
delete_site_option('datatensai_locale_url');
delete_option('datatensai_datepicker_css');
delete_site_option('datatensai_datepicker_css');
delete_option('datatensai_version');
delete_site_option('datatensai_version');

