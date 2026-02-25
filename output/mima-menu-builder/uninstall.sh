#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mimamebu_active_currencies'
wp option delete 'mimamebu_active_languages'
wp option delete 'mimamebu_screensaver'
wp option delete 'mimamebu_features'
wp option delete 'mimamebu_front_theme'
wp option delete 'mimamebu_ss_timeout_min'
wp option delete 'mimamebu_active_theme'
wp option delete 'mimamebu_default_currency'

