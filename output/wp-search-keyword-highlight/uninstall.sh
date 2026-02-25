#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'of_template'
wp option delete 'of_options'
wp option delete 'of_shortname'
wp option delete 'skh_turn_on'
wp option delete 'skh_bgcolor'
wp option delete 'skh_color'
wp option delete 'skh_custom_css'

