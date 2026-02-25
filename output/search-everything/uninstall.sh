#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'se_options'
wp option delete 'se_meta'
wp option delete 'se_show_we_tried'

