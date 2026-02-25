#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'session_rewind_api_key'
wp option delete 'session_rewind_start_recording'
wp option delete 'session_rewind_create_new_session'

