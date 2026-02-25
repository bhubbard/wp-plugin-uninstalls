#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'floacowi_phone_contact_phone'
wp option delete 'floacowi_phone_contact_whatsapp'
wp option delete 'floacowi_phone_contact_greeting'
wp option delete 'floacowi_phone_contact_prefilled'
wp option delete 'floacowi_phone_contact_whatsapp_text'
wp option delete 'floacowi_phone_contact_call_text'

