#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'illegal_names'
wp option delete 'site_name'
wp option delete 'ms_files_rewriting'

