<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pla_title');
delete_site_option('pla_title');
delete_option('pla_content');
delete_site_option('pla_content');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('pla_type');
delete_site_option('pla_type');
delete_option('pla_menu');
delete_site_option('pla_menu');
delete_option('pla_update');
delete_site_option('pla_update');

