#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dapii_api_url'
wp option delete 'dapii_request_type'
wp option delete 'dapii_api_params'

