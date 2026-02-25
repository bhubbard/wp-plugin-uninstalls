#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vison_ai_token'
wp option delete 'vison_ai_domain'
wp option delete 'vison_ai_analysis_url'
wp option delete 'vison_ai_script_option'

