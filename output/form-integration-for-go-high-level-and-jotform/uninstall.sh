#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ghl_jotform_webhook_secret'
wp option delete 'ghljotform_clnt_id'
wp option delete 'ghljotform_clnt_scrt'
wp option delete 'ghl_jotform_api'
wp option delete 'ghljotform_oauth_state'

