#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'insertabot_api_key_encrypted'
wp option delete 'insertabot_security_logs'
wp option delete 'insertabot_enabled'
wp option delete 'insertabot_api_base'
wp option delete 'insertabot_api_key'

