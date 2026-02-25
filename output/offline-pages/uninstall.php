<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('opwp_allow_external_pages');
delete_site_option('opwp_allow_external_pages');
delete_option('opwp_allow_category_pages');
delete_site_option('opwp_allow_category_pages');
delete_option('opwp_allow_tag_pages');
delete_site_option('opwp_allow_tag_pages');
delete_option('opwp_allow_author_pages');
delete_site_option('opwp_allow_author_pages');
delete_option('opwp_custom_rules');
delete_site_option('opwp_custom_rules');

