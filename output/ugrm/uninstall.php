<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('UGRM_admin_role');
delete_site_option('UGRM_admin_role');
delete_option('UGRM_editor_role');
delete_site_option('UGRM_editor_role');
delete_option('UGRM_author_role');
delete_site_option('UGRM_author_role');
delete_option('UGRM_contributor_role');
delete_site_option('UGRM_contributor_role');
delete_option('UGRM_subscriber_role');
delete_site_option('UGRM_subscriber_role');
delete_option('UGRM_return_target_to_HTTPS');
delete_site_option('UGRM_return_target_to_HTTPS');

