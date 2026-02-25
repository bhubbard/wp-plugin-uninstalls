#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sr42_podcast_url'
wp option delete 'sr42_round_url'
wp option delete 'sr42_radio_title'
wp option delete 'sr42_background_url'
wp option delete 'sr42_play_url'
wp option delete 'sr42_pause_url'

