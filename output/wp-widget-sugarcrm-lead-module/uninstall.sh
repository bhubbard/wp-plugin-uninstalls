#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'OEPL_Form_Custom_CSS'
wp option delete 'OEPL_Captcha_status'
wp option delete 'OEPL_Select_Captcha'
wp option delete 'OEPL_RECAPTCHA_SITE_KEY'
wp option delete 'OEPL_is_SugarCRM_htaccess_Protected'
wp option delete 'OEPL_SugarCRM_htaccess_Username'
wp option delete 'OEPL_SugarCRM_htaccess_Password'
wp option delete 'OEPL_SugarCRMSuccessMessage'
wp option delete 'OEPL_SugarCRMFailureMessage'
wp option delete 'OEPL_SugarCRMReqFieldsMessage'
wp option delete 'OEPL_SugarCRMInvalidCaptchaMessage'
wp option delete 'OEPL_auto_IP_addr_status'
wp option delete 'OEPL_Email_Notification'
wp option delete 'OEPL_Email_Notification_Receiver'
wp option delete 'OEPL_User_Redirect_Status'
wp option delete 'OEPL_User_Redirect_To'
wp option delete 'OEPL_SUGARCRM_URL'
wp option delete 'OEPL_SUGARCRM_ADMIN_USER'
wp option delete 'OEPL_SUGARCRM_ADMIN_PASS'
wp option delete 'OEPL_RECAPTCHA_SECRET_KEY'
wp option delete 'OEPL_PLUGIN_VERSION'

# Delete Transients
wp transient delete 'wp2sl_captcha'

