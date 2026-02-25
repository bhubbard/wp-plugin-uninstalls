#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_igniter_shortcode_posts'
wp option delete 'wp_igniter_page_override'
wp option delete 'wp_igniter_ci_path'
wp option delete 'wp_igniter_handle_404'
wp option delete 'wp_igniter_native_constants'
wp option delete 'wp_igniter_custom_apppath'
wp option delete 'wp_igniter_custom_sysfolder'
wp option delete 'wp_igniter_ci_urihook'

