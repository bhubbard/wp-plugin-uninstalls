<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dcfme_subscribe_text');
delete_site_option('dcfme_subscribe_text');
delete_option('recorp_divi_mailchimp');
delete_site_option('recorp_divi_mailchimp');
delete_option('dcfme_mailchimp_rc_api');
delete_site_option('dcfme_mailchimp_rc_api');
delete_option('dcfme_mailchimp_rc_lists');
delete_site_option('dcfme_mailchimp_rc_lists');
delete_option('divi_contact_form_mailchimp_rc_extension_redirect');
delete_site_option('divi_contact_form_mailchimp_rc_extension_redirect');
delete_option('dcfme_license_key');
delete_site_option('dcfme_license_key');

