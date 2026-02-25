<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fts_email_field_label');
delete_site_option('fts_email_field_label');
delete_option('fts_first_name_field_label');
delete_site_option('fts_first_name_field_label');
delete_option('fts_last_name_field_label');
delete_site_option('fts_last_name_field_label');
delete_option('fts_slack_url');
delete_site_option('fts_slack_url');
delete_option('fts_slack_token');
delete_site_option('fts_slack_token');
delete_option('fts_slack_form');
delete_site_option('fts_slack_form');

