#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inq_header'
wp option delete 'inq_item_lable'
wp option delete 'inq_email_feild_lable'
wp option delete 'inq_name_feild_lable'
wp option delete 'inq_message_feild_lable'
wp option delete 'inq_email_to'
wp option delete 'inq_suc_msg'
wp option delete 'inq_err_captcha'
wp option delete 'inq_err_email'
wp option delete 'inq_err_name'
wp option delete 'inq_form_style'

