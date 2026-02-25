<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_dwe_templates');
delete_site_option('_dwe_templates');
delete_option('dwe_hide_from_subsites');
delete_site_option('dwe_hide_from_subsites');

