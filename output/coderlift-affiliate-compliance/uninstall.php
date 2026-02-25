<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cl_aff_comp_target_urls');
delete_site_option('cl_aff_comp_target_urls');
delete_option('cl_aff_comp_content');
delete_site_option('cl_aff_comp_content');
delete_option('cl_aff_comp_target_word1');
delete_site_option('cl_aff_comp_target_word1');
delete_option('cl_aff_comp_class');
delete_site_option('cl_aff_comp_class');

