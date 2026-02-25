#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pixalia_default_style'
wp option delete 'pixalia_default_aspect_ratio'
wp option delete 'pixalia_api_key'
wp option delete 'pixalia_post_types'
wp option delete 'pixalia_last_check_version'

