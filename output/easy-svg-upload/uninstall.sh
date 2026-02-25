#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'esup_enable_easy_svg_upload'
wp option delete 'esup_allow_authors'
wp option delete 'esup_max_svg_kb'

