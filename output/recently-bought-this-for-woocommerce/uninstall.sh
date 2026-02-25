#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recently_bought_settings_pnumber'
wp option delete 'recently_bought_settings_text'
wp option delete 'recently_bought_settings_randomize'
wp option delete 'recently_bought_settings_corner'
wp option delete 'recently_bought_settings_slide_in_delay'

