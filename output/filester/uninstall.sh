#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'njt_fs_settings'
wp option delete 'njt_fs_review'
wp option delete 'njt_fs_selector_themes'
wp option delete 'njt_fs_first_time_active'
wp option delete 'njt_fs_version'

