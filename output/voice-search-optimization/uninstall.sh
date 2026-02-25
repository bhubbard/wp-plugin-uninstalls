#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'voicseop_enable_text_search'
wp option delete 'voicseop_enable_voice_search'
wp option delete 'voicseop_voice_search_timeout'
wp option delete 'voicseop_enable_voice_command'
wp option delete 'voicseop_voice_command_timeout'
wp option delete 'voicseop_voice_command_position'
wp option delete 'voicseop_plugin_settings'

