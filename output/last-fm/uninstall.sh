#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lastfm_username'
wp option delete 'lastfm_lastchecked'
wp option delete 'lastfm_widget_title'
wp option delete 'lastfm_track_data'
wp option delete 'lastfm_widget_count'
wp option delete 'lastfm_widget_length'
wp option delete 'lastfm_widget_dots'
wp option delete 'lastfm_widget_now'
wp option delete 'lastfm_widget_covers'
wp option delete 'lastfm_api_key'

