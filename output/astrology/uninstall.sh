#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'astrology_plugin_options'
wp option delete 'astrology_client_status'
wp option delete 'astrology_admin_notices'

