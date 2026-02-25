<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vlbr_filter_target');
delete_site_option('vlbr_filter_target');
delete_option('vlbr_br_format');
delete_site_option('vlbr_br_format');
delete_option('vlbr_insert_paragraph_tags');
delete_site_option('vlbr_insert_paragraph_tags');
delete_option('vlbr_shortcodes');
delete_site_option('vlbr_shortcodes');

