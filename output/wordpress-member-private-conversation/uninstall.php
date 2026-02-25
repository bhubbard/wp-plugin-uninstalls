<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nmconvo_allow_attachment');
delete_site_option('nmconvo_allow_attachment');
delete_option('nmconvo_size_limit');
delete_site_option('nmconvo_size_limit');
delete_option('nmconvo_file_ext');
delete_site_option('nmconvo_file_ext');
delete_option('nmconvo_file_limit');
delete_site_option('nmconvo_file_limit');
delete_option('nmconvo_db_version');
delete_site_option('nmconvo_db_version');
delete_option('nmconvo_roles');
delete_site_option('nmconvo_roles');
delete_option('nmconvo_notify_user');
delete_site_option('nmconvo_notify_user');
delete_option('nmconvo_email_subject');
delete_site_option('nmconvo_email_subject');
delete_option('nmconvo_email_message');
delete_site_option('nmconvo_email_message');
delete_option('nmconvo_sent_message');
delete_site_option('nmconvo_sent_message');
delete_option('nmconvo_delete_message');
delete_site_option('nmconvo_delete_message');
delete_option('nmconvo_off_bootstrap');
delete_site_option('nmconvo_off_bootstrap');
delete_option('nmconvo_convo_page');
delete_site_option('nmconvo_convo_page');

