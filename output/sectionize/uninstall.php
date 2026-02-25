<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sectionize_id_prefix');
delete_site_option('sectionize_id_prefix');
delete_option('sectionize_start_section');
delete_site_option('sectionize_start_section');
delete_option('sectionize_end_section');
delete_site_option('sectionize_end_section');
delete_option('sectionize_include_toc_threshold');
delete_site_option('sectionize_include_toc_threshold');
delete_option('sectionize_before_toc');
delete_site_option('sectionize_before_toc');
delete_option('sectionize_after_toc');
delete_site_option('sectionize_after_toc');
delete_option('sectionize_disabled');
delete_site_option('sectionize_disabled');

