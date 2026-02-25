<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prismatic_options_general');
delete_site_option('prismatic_options_general');
delete_option('prismatic_options_prism');
delete_site_option('prismatic_options_prism');
delete_option('prismatic_options_highlight');
delete_site_option('prismatic_options_highlight');
delete_option('prismatic_options_plain');
delete_site_option('prismatic_options_plain');
delete_option('prismatic_options_advanced');
delete_site_option('prismatic_options_advanced');
delete_option('prismatic-dismiss-notice');
delete_site_option('prismatic-dismiss-notice');

