#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mblzr_smartphone_theme'
wp option delete 'mblzr_enabled_side_module_themes_settings'
wp option delete 'mblzr_do_log'
wp option delete 'mblzr_do_log_date'

