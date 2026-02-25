<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wbcp_display_currencies_array');
delete_site_option('wbcp_display_currencies_array');
delete_option('wbcp_display_after_content');
delete_site_option('wbcp_display_after_content');
delete_option('wbcp_display_header_before');
delete_site_option('wbcp_display_header_before');
delete_option('wbcp_display_text_after');
delete_site_option('wbcp_display_text_after');

