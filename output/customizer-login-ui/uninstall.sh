#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cluiwp_color1'
wp option delete 'cluiwp_color2'
wp option delete 'cluiwp_logo'
wp option delete 'cluiwp_background'
wp option delete 'cluiwp_brightness'
wp option delete 'cluiwp_activation_redirect'

