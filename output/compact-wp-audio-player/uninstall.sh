#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sc_audio_disable_simultaneous_play'
wp option delete 'sc_audio_disable_url_validation'

