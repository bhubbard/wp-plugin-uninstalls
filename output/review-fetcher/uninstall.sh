#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grplugin_api_key'
wp option delete 'grplugin_place_id'
wp option delete 'grplugin_review_count'
wp option delete 'grplugin_ai_review_summary'
wp option delete 'grplugin_openai_key'

