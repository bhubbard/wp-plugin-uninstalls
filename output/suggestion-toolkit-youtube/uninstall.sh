#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'suggestion_toolkit_youtube_api_key'
wp option delete 'suggestion_toolkit_youtube_my'
wp option delete 'suggestion_toolkit_youtube_event_type'

