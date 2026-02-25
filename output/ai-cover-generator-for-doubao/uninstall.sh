#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aicg_api_key'
wp option delete 'aicg_api_base_url'
wp option delete 'aicg_text_model'
wp option delete 'aicg_image_model'

