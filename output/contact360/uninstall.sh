#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'contact360-client-id'
wp option delete 'contact360-api-secret'
wp option delete 'contact360-endpoint-url'

