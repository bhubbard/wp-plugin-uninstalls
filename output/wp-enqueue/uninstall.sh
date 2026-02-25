#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpenq_scripts_path'
wp option delete 'wpenq_scripts_cond'
wp option delete 'wpenq_styles_path'
wp option delete 'wpenq_styles_cond'

