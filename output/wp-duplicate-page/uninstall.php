<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('njt_duplicate_post_types');
delete_site_option('njt_duplicate_post_types');
delete_option('njt_duplicate_text_link');
delete_site_option('njt_duplicate_text_link');
delete_option('njt_duplicate_in_editor');
delete_site_option('njt_duplicate_in_editor');
delete_option('njt_duplicate_reviewed');
delete_site_option('njt_duplicate_reviewed');
delete_option('njt_duplicate_roles');
delete_site_option('njt_duplicate_roles');

