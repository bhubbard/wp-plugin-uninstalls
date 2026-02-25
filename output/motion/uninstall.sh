#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'motion_option_boxClass'
wp option delete 'motion_option_offset'
wp option delete 'motion_option_mobile'
wp option delete 'motion_option_live'
wp option delete 'motion_option_customCSS'
wp option delete 'motion_option_motionClass'

