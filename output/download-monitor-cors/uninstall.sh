#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dlm_download_endpoint'
wp option delete 'dlm_download_endpoint_value'
wp option delete 'dlm_cors_requester_url'

