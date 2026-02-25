<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dprx_minislides_templates');
delete_site_option('dprx_minislides_templates');
delete_option('dprx_minislides_current_template');
delete_site_option('dprx_minislides_current_template');

