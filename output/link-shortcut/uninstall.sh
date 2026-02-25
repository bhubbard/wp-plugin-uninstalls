#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'linkshortcut_subdir'
wp option delete 'linkshortcut_length'
wp option delete 'linkshortcut_redirecttype'

