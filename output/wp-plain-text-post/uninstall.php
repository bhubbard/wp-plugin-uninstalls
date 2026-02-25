<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpplainpost_user_roles');
delete_site_option('wpplainpost_user_roles');
delete_option('wpplainpost_post_types');
delete_site_option('wpplainpost_post_types');
delete_option('wpplainpost_post_allowed_tags');
delete_site_option('wpplainpost_post_allowed_tags');

