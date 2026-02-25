#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'speedvitals_rum_site_id'
wp option delete 'speedvitals_rum_script_position'
wp option delete 'speedvitals_rum_script_loading'

