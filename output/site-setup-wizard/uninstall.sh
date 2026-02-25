#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nsd_ssw_plugins_categories'
wp option delete 'nsd_ssw_plugins_list'
wp option delete 'nsd_ssw_themes_categories'
wp option delete 'nsd_ssw_themes_list'
wp option delete 'nsd_ssw_config_options'

