#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_settings_wcl_settings_limit'
wp option delete 'wc_settings_wcl_settings_exclude'
wp option delete 'wc_settings_wcl_settings_label'

