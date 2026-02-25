#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'options-general_banner-alerts_display'
wp option delete 'rewrite_rules'

