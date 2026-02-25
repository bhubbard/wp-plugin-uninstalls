#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spotlight_search_opt'
wp option delete 'csf_demo_mode'
wp option delete 'spotlight_search_installed'
wp option delete 'spotlight_search_version'

