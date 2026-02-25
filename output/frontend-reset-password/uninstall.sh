#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'divi_engine_options'
wp option delete 'divi_fb_license'
wp option delete 'wp_enhanced_licenses'
wp option delete 'wpe_incomplete_achievements'
wp option delete 'wpe_complete_achievements'
wp option delete 'somfrp_gen_settings'
wp option delete 'somfrp_security_settings'
wp option delete 'somfrp_design_settings'

