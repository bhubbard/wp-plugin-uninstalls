#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fastpix_api_key'
wp option delete 'fastpix_api_secret'
wp option delete 'fastpix_encryption_key'
wp option delete 'fastpix_api_key_encrypted'
wp option delete 'fastpix_api_secret_encrypted'
wp option delete 'fastpix_videos'

