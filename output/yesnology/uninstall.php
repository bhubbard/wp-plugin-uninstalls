<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yesnology_secretkey');
delete_site_option('yesnology_secretkey');
delete_option('yesnology_username');
delete_site_option('yesnology_username');
delete_option('yesnology_password');
delete_site_option('yesnology_password');
delete_option('yesnology_tenatId');
delete_site_option('yesnology_tenatId');
delete_option('yesnology_companyId');
delete_site_option('yesnology_companyId');
delete_option('yesnology_clientId');
delete_site_option('yesnology_clientId');
delete_option('yesnology_secretKey');
delete_site_option('yesnology_secretKey');
delete_option('yesnology_companySelect');
delete_site_option('yesnology_companySelect');
delete_option('yesnology_bodyColor');
delete_site_option('yesnology_bodyColor');
delete_option('yesnology_textColor');
delete_site_option('yesnology_textColor');
delete_option('yesnology_buttonPosition');
delete_site_option('yesnology_buttonPosition');
delete_option('yesnology_submit_confirm');
delete_site_option('yesnology_submit_confirm');

