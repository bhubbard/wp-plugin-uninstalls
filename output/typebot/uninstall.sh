#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lib_version'
wp option delete 'init_snippet'
wp option delete 'excluded_pages'

