<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('omie_outgoing_mail_name_id');
delete_site_option('omie_outgoing_mail_name_id');
delete_option('omie_outgoing_mail_email_id');
delete_site_option('omie_outgoing_mail_email_id');

