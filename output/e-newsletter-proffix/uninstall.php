<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('proffix_newsletter_settings_error');
delete_site_option('proffix_newsletter_settings_error');
delete_option('proffix_newsletter_default_url');
delete_site_option('proffix_newsletter_default_url');
delete_option('proffix_newsletter_default_db');
delete_site_option('proffix_newsletter_default_db');
delete_option('proffix_newsletter_default_list');
delete_site_option('proffix_newsletter_default_list');
delete_option('proffix_newsletter_settings_success');
delete_site_option('proffix_newsletter_settings_success');
delete_option('proffix_newsletter_default_show_name');
delete_site_option('proffix_newsletter_default_show_name');
delete_option('proffix_newsletter_default_description');
delete_site_option('proffix_newsletter_default_description');

