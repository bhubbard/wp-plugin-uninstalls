#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bizbaby_plans'
wp option delete 'bizbaby_plan_last_updated'
wp option delete 'bizbaby_plan'
wp option delete 'bizbaby_slogan_option'
wp option delete 'bizbaby_form_shortcodes'

