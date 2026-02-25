<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mediavidi_https_social_migration');
delete_site_option('mediavidi_https_social_migration');
delete_option('mediavidi_https_social_migration_pro');
delete_site_option('mediavidi_https_social_migration_pro');

