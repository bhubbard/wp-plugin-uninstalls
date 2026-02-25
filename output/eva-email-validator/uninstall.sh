#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eva-api-error'
wp option delete 'eva_settings'
wp option delete 'eva-api-key-invalid'

