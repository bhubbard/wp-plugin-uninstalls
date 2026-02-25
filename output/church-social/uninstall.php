<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('church_social_api_key');
delete_site_option('church_social_api_key');
delete_option('church_social_calendar_page_id');
delete_site_option('church_social_calendar_page_id');
delete_option('church_social_sermon_archive_page_id');
delete_site_option('church_social_sermon_archive_page_id');
delete_option('church_social_theme');
delete_site_option('church_social_theme');
delete_option('church_social_sermon_copyright_notice');
delete_site_option('church_social_sermon_copyright_notice');

