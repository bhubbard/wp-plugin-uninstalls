#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blackwebsite_extra_options'
wp option delete 'blackwebsite_options'
wp option delete 'blackwebsite_predefine_options'
wp option delete 'blackwebsite_widget_options'

