<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ntmrr_blacklisted_emails');
delete_site_option('ntmrr_blacklisted_emails');
delete_option('ntmrr_whitelisted_emails');
delete_site_option('ntmrr_whitelisted_emails');
delete_option('ntmrr_email_not_approved_message');
delete_site_option('ntmrr_email_not_approved_message');
delete_option('ntmrr_redirect_on_unapproved');
delete_site_option('ntmrr_redirect_on_unapproved');
delete_option('ntmrr_redirect_on_unapproved_url');
delete_site_option('ntmrr_redirect_on_unapproved_url');
delete_option('ntmrr_registration_form_message');
delete_site_option('ntmrr_registration_form_message');

