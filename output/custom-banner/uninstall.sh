#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom_banner_banner_text'
wp option delete 'custom_banner_autoplay'
wp option delete 'custom_banner_delay'
wp option delete 'custom_banner_enabled'
wp option delete 'custom_banner_text_color'
wp option delete 'custom_banner_background_color'
wp option delete 'custom_banner_width'
wp option delete 'custom_banner_arrows'
wp option delete 'custom_banner_enable'
wp option delete 'custom_banner_action_hook'
wp option delete 'custom_banner_css_class'

