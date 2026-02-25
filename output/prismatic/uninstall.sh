#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prismatic_options_general'
wp option delete 'prismatic_options_prism'
wp option delete 'prismatic_options_highlight'
wp option delete 'prismatic_options_plain'
wp option delete 'prismatic_options_advanced'
wp option delete 'prismatic-dismiss-notice'

