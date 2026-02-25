<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ccf_username');
delete_site_option('ccf_username');
delete_option('ccf_caption');
delete_site_option('ccf_caption');
delete_option('ccf_with_in_textbox');
delete_site_option('ccf_with_in_textbox');
delete_option('ccf_button');
delete_site_option('ccf_button');
delete_option('ccf_password');
delete_site_option('ccf_password');
delete_option('ccf_group');
delete_site_option('ccf_group');
delete_option('ccf_title');
delete_site_option('ccf_title');
delete_option('ccf_adminemail');
delete_site_option('ccf_adminemail');
delete_option('ccf_fromemail');
delete_site_option('ccf_fromemail');
delete_option('ccf_adminmail');
delete_site_option('ccf_adminmail');
delete_option('ccf_adminmail_subject');
delete_site_option('ccf_adminmail_subject');
delete_option('ccf_adminmail_content');
delete_site_option('ccf_adminmail_content');
delete_option('ccf_usermail');
delete_site_option('ccf_usermail');
delete_option('ccf_usermail_subject');
delete_site_option('ccf_usermail_subject');
delete_option('ccf_usermail_content');
delete_site_option('ccf_usermail_content');
delete_option('ccf_homeurl');
delete_site_option('ccf_homeurl');

