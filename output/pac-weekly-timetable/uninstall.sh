#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pacwtt_option_css'
wp option delete 'pacwtt_option_layout'
wp option delete 'pacwtt_option_monday'
wp option delete 'pacwtt_db_version'

