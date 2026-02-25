#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ScriptsAndStylesBySL_scripts_head_option'
wp option delete 'ScriptsAndStylesBySL_scripts_footer_option'
wp option delete 'ScriptsAndStylesBySL_styles_option'

