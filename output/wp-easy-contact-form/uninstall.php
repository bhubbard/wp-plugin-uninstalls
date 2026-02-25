<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wecf_contact_mail_message_options');
delete_site_option('wecf_contact_mail_message_options');

