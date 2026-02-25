#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gf_settings'
wp option delete 'gravityformsaddon_gravityformsrecaptcha_settings'
wp option delete 'gfcnp_plugin'
wp option delete 'gf_cnp_settings'
wp option delete 'gfcnp_activation_error'

