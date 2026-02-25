<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jfpb_justification_mode');
delete_site_option('jfpb_justification_mode');
delete_option('jfpb_enable_hyphens');
delete_site_option('jfpb_enable_hyphens');
delete_option('jfpb_word_spacing');
delete_site_option('jfpb_word_spacing');
delete_option('jfpb_word_spacing_custom_value');
delete_site_option('jfpb_word_spacing_custom_value');
delete_option('jfpb_word_spacing_custom_unit');
delete_site_option('jfpb_word_spacing_custom_unit');

