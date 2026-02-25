#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'virtu_mortgage_agent_id'
wp option delete 'virtu_mortgage_agent_id_from_url'
wp option delete 'virtu_mortgage_ega_tracking_id'

