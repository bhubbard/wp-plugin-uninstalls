<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vcw-bgcolor');
delete_site_option('vcw-bgcolor');
delete_option('vcw-txtcolor');
delete_site_option('vcw-txtcolor');
delete_option('vcw-msg');
delete_site_option('vcw-msg');
delete_option('vcw-animation-type');
delete_site_option('vcw-animation-type');
delete_option('vcw-bgc');
delete_site_option('vcw-bgc');

// Delete Transients
delete_transient('vcw_success');
delete_site_transient('vcw_success');

