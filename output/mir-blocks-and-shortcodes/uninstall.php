<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mir_shortcodes');
delete_site_option('mir_shortcodes');
delete_option('mir_shortcodes_cpt');
delete_site_option('mir_shortcodes_cpt');
delete_option('mir_shortcodes_tax');
delete_site_option('mir_shortcodes_tax');

