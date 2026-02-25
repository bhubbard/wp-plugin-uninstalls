#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rw_widgets_options'
wp option delete 'restrict_widgets_activated_blogs'

