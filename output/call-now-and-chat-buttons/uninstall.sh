#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CNACB_phone_number'
wp option delete 'CNACB_call_color'
wp option delete 'CNACB_chat_color'
wp option delete 'CNACB_whatsapp_enabled'
wp option delete 'CNACB_call_text'
wp option delete 'CNACB_chat_number'
wp option delete 'CNACB_widget_size'
wp option delete 'CNACB_whatsapp_qr_code_enabled'
wp option delete 'CNACB_widget_position'

