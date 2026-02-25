#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'redirect_txt_rules'
wp option delete 'redirect_txt_logs'
wp option delete 'redirect_txt_settings'

