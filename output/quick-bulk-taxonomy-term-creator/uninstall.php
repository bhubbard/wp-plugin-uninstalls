<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qbttc_terms');
delete_site_option('qbttc_terms');
delete_option('qbttc_hierarchy_indent_character');
delete_site_option('qbttc_hierarchy_indent_character');
delete_option('qbttc_taxonomy');
delete_site_option('qbttc_taxonomy');

