#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easyresh_version'
wp option delete 'easyresh_secret_key_v2'
wp option delete 'easyresh_public_key_v2'
wp option delete 'easyresh_secret_key_v3'
wp option delete 'easyresh_public_key_v3'
wp option delete 'easyresh_v3_response_threshold'

