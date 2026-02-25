#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'check_maintenance'
wp option delete 'check_automatic_formatting'
wp option delete 'check_rsd_link'
wp option delete 'check_wlwmanifest_link'
wp option delete 'check_trw_metadesc'
wp option delete 'check_shortcode_widgets'
wp option delete 'check_login_errors'
wp option delete 'check_secure_functions'
wp option delete 'check_restrict_access_admin_panel'
wp option delete 'check_remove_version_wp'
wp option delete 'check_remove_feed_generator'
wp option delete 'check_disable_autosave'
wp option delete 'check_post_thumbnails'
wp option delete 'check_wp_default_editor'
wp option delete 'check_disable_default_widgets'
wp option delete 'check_remove_margin_top'
wp option delete 'check_jpeg_quality'
wp option delete 'check_gallery_settings'
wp option delete 'check_more_buttons_editor'

