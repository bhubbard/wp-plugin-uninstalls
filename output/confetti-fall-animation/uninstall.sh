#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'confetti-popup-delay'
wp option delete 'confetti_welcome_shown'
wp option delete 'confetti-popup-content'
wp option delete 'confetti-popup-pages'
wp option delete 'confetti_active'
wp option delete 'popup_background_image'

