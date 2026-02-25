#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'setting_include_files'
wp option delete 'setting_exclude_files'
wp option delete 'wpcag_ltime'

