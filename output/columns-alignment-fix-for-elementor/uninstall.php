<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elementor_fix_columns_alignment_default');
delete_site_option('elementor_fix_columns_alignment_default');
delete_option('elementor_stretched_section_container');
delete_site_option('elementor_stretched_section_container');

