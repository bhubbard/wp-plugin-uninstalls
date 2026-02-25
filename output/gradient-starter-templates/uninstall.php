<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('__gradient_starter_templates_do_redirect');
delete_site_option('__gradient_starter_templates_do_redirect');

