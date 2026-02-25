#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shabm_settings'
wp option delete 'shabm_presets'
wp option delete 'bg_shce_effectsEnabled'
wp option delete 'bg_shce_animationEffect'
wp option delete 'bg_shce_animationSpeed'
wp option delete 'bg_shce_stickToBottom'
wp option delete 'bg_shce_accordion'

