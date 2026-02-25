<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('keywbuca_rules');
delete_site_option('keywbuca_rules');
delete_option('keywbuca_category_rules');
delete_site_option('keywbuca_category_rules');

