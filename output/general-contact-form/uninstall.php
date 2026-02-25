<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CF_fields');
delete_site_option('CF_fields');
delete_option('CF_records');
delete_site_option('CF_records');
delete_option('CF_title');
delete_site_option('CF_title');
delete_option('CF_On_SendEmail');
delete_site_option('CF_On_SendEmail');
delete_option('CF_On_MyEmail');
delete_site_option('CF_On_MyEmail');
delete_option('CF_On_MySubject');
delete_site_option('CF_On_MySubject');
delete_option('CF_On_Captcha');
delete_site_option('CF_On_Captcha');
delete_option('CF_Captcha_field_length');
delete_site_option('CF_Captcha_field_length');
delete_option('CF_CSS_textbox_size');
delete_site_option('CF_CSS_textbox_size');
delete_option('CF_CSS_textarea_size_row');
delete_site_option('CF_CSS_textarea_size_row');
delete_option('CF_CSS_textarea_size_col');
delete_site_option('CF_CSS_textarea_size_col');
delete_option('$result->fieldid');
delete_site_option('$result->fieldid');

