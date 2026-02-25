<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gift_email_subject');
delete_site_option('gift_email_subject');
delete_option('gift_email_bcc');
delete_site_option('gift_email_bcc');
delete_option('gift_bank_account');
delete_site_option('gift_bank_account');

