#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inqubufo_whatsapp_enable'
wp option delete 'inqubufo_whatsapp_number'
wp option delete 'inqubufo_whatsapp_message'
wp option delete 'inqubufo_whatsapp_button_text'

