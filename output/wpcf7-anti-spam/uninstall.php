<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcf7_antispam_pass');
delete_site_option('wpcf7_antispam_pass');
delete_option('wpcf7_antispam_hash');
delete_site_option('wpcf7_antispam_hash');
delete_option('wpcf7_antispam_collector');
delete_site_option('wpcf7_antispam_collector');
delete_option('wpcf7_antispam_mail_smtp_host');
delete_site_option('wpcf7_antispam_mail_smtp_host');
delete_option('wpcf7_antispam_mail_smtp_port');
delete_site_option('wpcf7_antispam_mail_smtp_port');
delete_option('wpcf7_antispam_mail_smtp_login');
delete_site_option('wpcf7_antispam_mail_smtp_login');
delete_option('wpcf7_antispam_mail_smtp_pass');
delete_site_option('wpcf7_antispam_mail_smtp_pass');
delete_option('wpcf7_antispam_mail_sender');
delete_site_option('wpcf7_antispam_mail_sender');
delete_option('wpcf7_antispam_mail_recipient');
delete_site_option('wpcf7_antispam_mail_recipient');
delete_option('wpcf7_antispam_mail_cc');
delete_site_option('wpcf7_antispam_mail_cc');

