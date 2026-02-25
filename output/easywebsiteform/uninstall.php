<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ewform_key');
delete_site_option('ewform_key');

// Delete Transients
delete_transient('ewform_api_notice_show');
delete_site_transient('ewform_api_notice_show');
delete_transient('ewform_hide_notice');
delete_site_transient('ewform_hide_notice');

