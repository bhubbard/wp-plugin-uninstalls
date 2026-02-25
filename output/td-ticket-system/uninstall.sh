#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'td_tts_db_version'
wp option delete 'td_tts_menuPos'
wp option delete 'td_tts_styles'
wp option delete 'td_tts_notification'
wp option delete 'td_tts_responsenote'
wp option delete 'td_tts_contactForm'
wp option delete 'td_tts_loginForm'
wp option delete 'td_tts_successPage'

