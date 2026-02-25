#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mpay'
wp option delete 'mpay_oauth'
wp option delete 'secure_token'

