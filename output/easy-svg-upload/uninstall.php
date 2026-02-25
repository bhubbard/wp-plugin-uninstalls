<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('esup_enable_easy_svg_upload');
delete_site_option('esup_enable_easy_svg_upload');
delete_option('esup_allow_authors');
delete_site_option('esup_allow_authors');
delete_option('esup_max_svg_kb');
delete_site_option('esup_max_svg_kb');

