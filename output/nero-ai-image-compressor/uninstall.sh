#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'neroaiic_process_uploads'
wp option delete 'neroaiic_process_themes'
wp option delete 'neroaiic_image_quality'
wp option delete 'neroaiic_api_key'

