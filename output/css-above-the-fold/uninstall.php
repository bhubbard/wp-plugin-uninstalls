<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bs_css_atf');
delete_site_option('bs_css_atf');
delete_option('bs_css_atf_timestamp');
delete_site_option('bs_css_atf_timestamp');

