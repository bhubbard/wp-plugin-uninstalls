#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pwa4wp_manifest'
wp option delete 'pwa4wp_cache_settings'
wp option delete 'pwa4wp_app_iconurl'
wp option delete 'pwa4wp_app_icons'
wp option delete 'pwa4wp_sw_version'
wp option delete 'pwa4wp_advanced'
wp option delete 'pwa4wp_manifest_created'
wp option delete 'pwa4wp_sw_created'
wp option delete 'pwa4wp_sw_installation_switch'
wp option delete 'pwa4wp_multisite_unify'
wp option delete 'pwa4wp_defer_install'
wp option delete 'pwa4wp_push_enable'

