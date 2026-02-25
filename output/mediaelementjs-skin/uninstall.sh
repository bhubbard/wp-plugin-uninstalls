#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mep_video_skin'
wp option delete 'mep_script_on_demand'
wp option delete 'mep_default_video_height'
wp option delete 'mep_default_video_width'
wp option delete 'mep_default_video_type'
wp option delete 'mep_default_audio_height'
wp option delete 'mep_default_audio_width'
wp option delete 'mep_default_audio_type'

