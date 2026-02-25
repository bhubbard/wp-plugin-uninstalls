#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'resizeer_process_on_upload'
wp option delete 'resizeer_max_width'
wp option delete 'resizeer_max_height'
wp option delete 'resizeer_quality'
wp option delete 'resizeer_process_uploads_automatically'

