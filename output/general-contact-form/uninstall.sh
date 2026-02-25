#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CF_fields'
wp option delete 'CF_records'
wp option delete 'CF_title'
wp option delete 'CF_On_SendEmail'
wp option delete 'CF_On_MyEmail'
wp option delete 'CF_On_MySubject'
wp option delete 'CF_On_Captcha'
wp option delete 'CF_Captcha_field_length'
wp option delete 'CF_CSS_textbox_size'
wp option delete 'CF_CSS_textarea_size_row'
wp option delete 'CF_CSS_textarea_size_col'
wp option delete '$result->fieldid'

