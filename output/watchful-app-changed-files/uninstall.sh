#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'watchful_app_settings_changed_files'
wp option delete 'watchful_changed_files_do_activation_redirect'

