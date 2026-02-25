<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('advacoco_enabled');
delete_site_option('advacoco_enabled');
delete_option('advacoco_snippet_length');
delete_site_option('advacoco_snippet_length');
delete_option('advacoco_prefix_text');
delete_site_option('advacoco_prefix_text');
delete_option('advacoco_suffix_text');
delete_site_option('advacoco_suffix_text');
delete_option('advacoco_domain_text');
delete_site_option('advacoco_domain_text');
delete_option('advacoco_exclude_pages');
delete_site_option('advacoco_exclude_pages');
delete_option('advacoco_min_chars');
delete_site_option('advacoco_min_chars');

