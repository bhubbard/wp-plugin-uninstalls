<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsb_form_fields');
delete_site_option('wpsb_form_fields');
delete_option('wpsb_link_love');
delete_site_option('wpsb_link_love');
delete_option('wpsb_form_email');
delete_site_option('wpsb_form_email');
delete_option('wpsb_privacy_label');
delete_site_option('wpsb_privacy_label');
delete_option('wpsb_form_send');
delete_site_option('wpsb_form_send');
delete_option('wpsb_form_header');
delete_site_option('wpsb_form_header');
delete_option('wpsb_msg_bad');
delete_site_option('wpsb_msg_bad');
delete_option('wpsb_email_from');
delete_site_option('wpsb_email_from');
delete_option('wpsb_msg_fail');
delete_site_option('wpsb_msg_fail');
delete_option('wpsb_double_optin');
delete_site_option('wpsb_double_optin');
delete_option('wpsb_auto_delete');
delete_site_option('wpsb_auto_delete');
delete_option('wpsb_email_subject');
delete_site_option('wpsb_email_subject');
delete_option('wpsb_email_message');
delete_site_option('wpsb_email_message');
delete_option('wpsb_msg_dbl');
delete_site_option('wpsb_msg_dbl');
delete_option('wpsb_msg_sent');
delete_site_option('wpsb_msg_sent');
delete_option('wpsb_form_footer');
delete_site_option('wpsb_form_footer');
delete_option('wpsb_dbl_sent');
delete_site_option('wpsb_dbl_sent');
delete_option('wpsb_dbl_fail');
delete_site_option('wpsb_dbl_fail');
delete_option('wpsb_db_version');
delete_site_option('wpsb_db_version');
delete_option('wpsb_widget_title');
delete_site_option('wpsb_widget_title');

