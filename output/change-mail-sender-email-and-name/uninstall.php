<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mail_sender_modifier_id');
delete_site_option('mail_sender_modifier_id');
delete_option('mail_sender_modifier_email_id');
delete_site_option('mail_sender_modifier_email_id');

