#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'send_pulse_deferred_admin_notices'
wp option delete 'sendpulse_code'
wp option delete 'sendpulse_active'
wp option delete 'sendpulse_addinfo'
wp option delete 'sendpulse_push_url'
wp option delete 'sendpulse_script_id'
wp option delete 'sendpulse_script_params'

