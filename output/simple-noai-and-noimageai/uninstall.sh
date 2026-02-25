#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'noai_general_options'
wp option delete 'noai_page_options'
wp option delete 'noai_robots_options'

