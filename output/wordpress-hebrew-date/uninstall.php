<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hebdate_sunset');
delete_site_option('hebdate_sunset');
delete_option('hebdate_lang');
delete_site_option('hebdate_lang');
delete_option('hebdate_hide_alafim');
delete_site_option('hebdate_hide_alafim');
delete_option('hebdate_format');
delete_site_option('hebdate_format');
delete_option('hebdate_format_custom');
delete_site_option('hebdate_format_custom');
delete_option('latitude');
delete_site_option('latitude');
delete_option('longitude');
delete_site_option('longitude');

