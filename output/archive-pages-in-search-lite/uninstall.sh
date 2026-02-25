#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mkapis_lite_settings_options'
wp option delete 'mkapis_lite_archive_names'
wp option delete 'mkapis_lite_all_archive_names'
wp option delete 'mkapis_lite_old_term_names'

