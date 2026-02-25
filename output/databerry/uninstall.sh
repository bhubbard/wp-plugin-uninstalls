#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chaindesk_onboarding'
wp option delete 'chaindesk_agent_id'
wp option delete 'chaindesk_verify'

