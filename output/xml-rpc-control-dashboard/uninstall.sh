#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xmlrpc_control_status'
wp option delete 'xmlrpc_control_rate_limiting_enabled'

