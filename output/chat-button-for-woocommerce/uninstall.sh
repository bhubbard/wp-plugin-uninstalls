#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcbs_whatsapp_number'
wp option delete 'wcbs_message'
wp option delete 'wcbs_whatsapp_button_class'
wp option delete 'wcbs_button_text'

