#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lead_form_fields'
wp option delete 'lead_communication_mode'
wp option delete 'lead_admin_communication_choice'
wp option delete 'lead_form_token'
wp option delete 'lead_form_styles'
wp option delete 'lead_form_title'

