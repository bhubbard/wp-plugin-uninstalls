#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pti_account_name'
wp option delete 'pti_api_key'
wp option delete 'pti_field_value'
wp option delete 'form_bgcolor'
wp option delete 'submitbtn_text'
wp option delete 'submitbtn_color'
wp option delete 'submitbtn_bgcolor'
wp option delete 'submitbtn_bghovercolor'
wp option delete 'logo-option'
wp option delete 'form_heading'
wp option delete 'message_box'

