<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mo_saml_htaccess_updated');
delete_site_option('mo_saml_htaccess_updated');
delete_option('mo_saml_assertion_time_validity');
delete_site_option('mo_saml_assertion_time_validity');
delete_option('mo_saml_message');
delete_site_option('mo_saml_message');
delete_option('mo_saml_multisite_notice_dismissed_time');
delete_site_option('mo_saml_multisite_notice_dismissed_time');
delete_option('mo_saml_black_friday_sale_notice_dismissed');
delete_site_option('mo_saml_black_friday_sale_notice_dismissed');
delete_option('mo_saml_black_friday_sale_notice_dismissed_time');
delete_site_option('mo_saml_black_friday_sale_notice_dismissed_time');
delete_option('mo_saml_keep_settings_on_deletion');
delete_site_option('mo_saml_keep_settings_on_deletion');
delete_option('saml_am_default_user_role');
delete_site_option('saml_am_default_user_role');

