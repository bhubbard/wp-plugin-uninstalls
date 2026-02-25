#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sitecall_credentials_option'
wp option delete 'focussitecall_connected'

