#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'exclude_script'
wp option delete 'merge_all_script_files'
wp option delete 'minify_script_file'
wp option delete 'script_exclusion_status'
wp option delete 'script_files_in_the_site'
wp option delete 'exclude_style'
wp option delete 'merge_all_style_files'
wp option delete 'minify_style_file'
wp option delete 'style_exclusion_status'
wp option delete 'style_files_in_the_site'

