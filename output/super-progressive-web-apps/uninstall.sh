#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'superpwa_apple_icons_uploaded'
wp option delete 'superpwa_apple_icons_settings'
wp option delete 'superpwa_caching_strategies_settings'
wp option delete 'superpwa_pull_to_refresh_settings'
wp option delete 'superpwa_utm_tracking_settings'
wp option delete 'superpwa_active_addons'
wp option delete 'superpwa_hide_newsletter'
wp option delete 'superpwa_pro_upgrade_license'
wp option delete 'superpwa_settings'
wp option delete 'superpwa_version'
wp option delete 'superpwa_active_sites'
wp option delete 'superpwa_wpml_settings'
wp option delete 'superpwa_wp_multilang_settings'
wp option delete 'superpwa_polylang_settings'
wp option delete 'superpwa_translatepress_settings'

# Delete Transients
wp transient delete 'superpwa_pre_cache_post_ids'
wp transient delete 'superpwa_admin_notice_activation'
wp transient delete 'superpwa_network_admin_notice_activation'
wp transient delete 'superpwa_admin_notice_upgrade_complete'

