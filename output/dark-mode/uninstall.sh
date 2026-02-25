#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_markdown_editor_update_notice_interval'
wp option delete 'dark_mode_version'
wp option delete 'dark_mode_install_time'
wp option delete 'wpmde_general'

# Delete Transients
wp transient delete 'wp_markdown_editor_review_notice_interval'
wp transient delete 'wp_markdown_editor_affiliate_notice_interval'

