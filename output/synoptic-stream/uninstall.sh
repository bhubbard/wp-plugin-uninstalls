#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'synoptic_stream_api_key'
wp option delete 'synoptic_stream_api_key_error'
wp option delete 'synoptic_stream_stream_id'
wp option delete 'synoptic_stream_post_types'
wp option delete 'synoptic_stream_activity_log'

