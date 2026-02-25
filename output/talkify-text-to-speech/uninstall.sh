#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'talkify_tts_api_key'
wp option delete 'talkify_tts_control_center'
wp option delete 'talkify_tts_keyboard_commands'
wp option delete 'talkify_tts_voice_commands'
wp option delete 'talkify_tts_default_voice'
wp option delete 'talkify_tts_default_rate'
wp option delete 'talkify_tts_text_selecor'
wp option delete 'talkify_tts_voice_picker'
wp option delete 'talkify_tts_voice_class_filter'
wp option delete 'talkify_tts_voice_culture_filter'
wp option delete 'talkify_tts_voice_language_filter'
wp option delete 'talkify_tts_controlcenter_location'
wp option delete 'talkify_tts_maximum_request_size'

