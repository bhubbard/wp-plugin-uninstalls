#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ngp_lang'
wp option delete 'ngp_const'
wp option delete 'ngp_rules'
wp option delete 'ngp_multicity_rules'
wp option delete 'ngp_multicity_id'
wp option delete 'ngp_multicity_class'
wp option delete 'ngp_theme'
wp option delete 'ngp_animation'
wp option delete 'ngp_duration'
wp option delete 'ngp_custom_styles'

