#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qeapps_pwa_apple_icons_uploaded'
wp option delete 'qeapps_pwa_manifest_settings'
wp option delete 'qeappspwa_email_error_message'
wp option delete 'qeappspwa_email_success_message'
wp option delete 'error_notice_message'
wp option delete 'splash_error_notice_message'
wp option delete 'qepwa_android_count'
wp option delete 'Activated_Plugin'

