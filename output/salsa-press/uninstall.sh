#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'salsapress_caches'
wp option delete 'salsapress_options'
wp option delete 'my_theme_options'

