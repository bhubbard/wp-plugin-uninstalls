#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pn_reg_email_on'
wp option delete 'pn_tpl_send'
wp option delete 'pn_reg_user_on'
wp option delete 'pn_tpl_name'
wp option delete 'pn_tpl_email'
wp option delete 'pn_email_template'
wp option delete 'pn_tpl_email_text'
wp option delete 'pn_tpl_email_subject_text'
wp option delete 'pn_tpl_html'
wp option delete 'pn_register_role'

