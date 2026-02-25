<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ed_color_scheme');
delete_site_option('ed_color_scheme');
delete_option('ed_tagline');
delete_site_option('ed_tagline');

