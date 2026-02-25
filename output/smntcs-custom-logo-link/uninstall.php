<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smntcs_custom_logo_link_url');
delete_site_option('smntcs_custom_logo_link_url');
delete_option('smntcs_custom_logo_link_target');
delete_site_option('smntcs_custom_logo_link_target');

