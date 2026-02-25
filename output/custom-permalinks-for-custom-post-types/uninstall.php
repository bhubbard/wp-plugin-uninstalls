<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('p105_permalink_structure_cpt');
delete_site_option('p105_permalink_structure_cpt');
delete_option('p105_priority_terms');
delete_site_option('p105_priority_terms');

