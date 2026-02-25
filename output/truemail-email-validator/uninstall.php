<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('TrueMail Api Key');
delete_site_option('TrueMail Api Key');
delete_option('option_name');
delete_site_option('option_name');
delete_option('truemail_email_validator');
delete_site_option('truemail_email_validator');

