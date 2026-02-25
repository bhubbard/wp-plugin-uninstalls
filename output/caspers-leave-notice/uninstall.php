<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpln_content_settings');
delete_site_option('cpln_content_settings');
delete_option('cpln_other_settings');
delete_site_option('cpln_other_settings');
delete_option('cpln_exclusions');
delete_site_option('cpln_exclusions');
delete_option('cpln_styling_settings');
delete_site_option('cpln_styling_settings');

