#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stellarwp_telemetry'
wp option delete 'stellarwp_telemetry_last_send'

