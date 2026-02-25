#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpvp_popup'
wp option delete '_site_transient_disable-ryv-notice'
wp option delete 'wp_video_popup_plugin_activated'
wp option delete 'wp_video_popup_install_date'
wp option delete 'wp_video_popup_review_notice'

