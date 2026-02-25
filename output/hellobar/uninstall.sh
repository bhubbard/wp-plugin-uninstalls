#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hellobar_api_key'
wp option delete '_hellobar-for-wordpress--options'

