#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'imcm-display-position'
wp option delete 'display_position'
wp option delete 'imcm-checkout-fields'
wp option delete 'imcm-style-options'
wp option delete 'imcm-setting-troubleshoot'
wp option delete 'imcm-setting-general'

