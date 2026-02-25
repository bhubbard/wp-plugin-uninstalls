<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('OEPL_Form_Custom_CSS');
delete_site_option('OEPL_Form_Custom_CSS');
delete_option('OEPL_Captcha_status');
delete_site_option('OEPL_Captcha_status');
delete_option('OEPL_Select_Captcha');
delete_site_option('OEPL_Select_Captcha');
delete_option('OEPL_RECAPTCHA_SITE_KEY');
delete_site_option('OEPL_RECAPTCHA_SITE_KEY');
delete_option('OEPL_is_SugarCRM_htaccess_Protected');
delete_site_option('OEPL_is_SugarCRM_htaccess_Protected');
delete_option('OEPL_SugarCRM_htaccess_Username');
delete_site_option('OEPL_SugarCRM_htaccess_Username');
delete_option('OEPL_SugarCRM_htaccess_Password');
delete_site_option('OEPL_SugarCRM_htaccess_Password');
delete_option('OEPL_SugarCRMSuccessMessage');
delete_site_option('OEPL_SugarCRMSuccessMessage');
delete_option('OEPL_SugarCRMFailureMessage');
delete_site_option('OEPL_SugarCRMFailureMessage');
delete_option('OEPL_SugarCRMReqFieldsMessage');
delete_site_option('OEPL_SugarCRMReqFieldsMessage');
delete_option('OEPL_SugarCRMInvalidCaptchaMessage');
delete_site_option('OEPL_SugarCRMInvalidCaptchaMessage');
delete_option('OEPL_auto_IP_addr_status');
delete_site_option('OEPL_auto_IP_addr_status');
delete_option('OEPL_Email_Notification');
delete_site_option('OEPL_Email_Notification');
delete_option('OEPL_Email_Notification_Receiver');
delete_site_option('OEPL_Email_Notification_Receiver');
delete_option('OEPL_User_Redirect_Status');
delete_site_option('OEPL_User_Redirect_Status');
delete_option('OEPL_User_Redirect_To');
delete_site_option('OEPL_User_Redirect_To');
delete_option('OEPL_SUGARCRM_URL');
delete_site_option('OEPL_SUGARCRM_URL');
delete_option('OEPL_SUGARCRM_ADMIN_USER');
delete_site_option('OEPL_SUGARCRM_ADMIN_USER');
delete_option('OEPL_SUGARCRM_ADMIN_PASS');
delete_site_option('OEPL_SUGARCRM_ADMIN_PASS');
delete_option('OEPL_RECAPTCHA_SECRET_KEY');
delete_site_option('OEPL_RECAPTCHA_SECRET_KEY');
delete_option('OEPL_PLUGIN_VERSION');
delete_site_option('OEPL_PLUGIN_VERSION');

// Delete Transients
delete_transient('wp2sl_captcha');
delete_site_transient('wp2sl_captcha');

