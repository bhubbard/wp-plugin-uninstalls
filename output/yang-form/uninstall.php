<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yangform_sites');
delete_site_option('yangform_sites');
delete_option('yangform_options');
delete_site_option('yangform_options');
delete_option('yangform_template_style');
delete_site_option('yangform_template_style');
delete_option('yangform_template');
delete_site_option('yangform_template');

