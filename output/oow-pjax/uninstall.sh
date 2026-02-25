#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oowcode_admin_theme'
wp option delete 'oow_pjax_script_priority'
wp option delete 'oow_pjax_enabled'
wp option delete 'oow_pjax_targets'
wp option delete 'oow_pjax_exclude_selectors'
wp option delete 'oow_pjax_exclude_zone_selectors'
wp option delete 'oow_pjax_exclude_external'
wp option delete 'oow_pjax_exclude_target_blank'
wp option delete 'oow_pjax_enable_cache'
wp option delete 'oow_pjax_cache_lifetime'
wp option delete 'oow_pjax_debug_mode'
wp option delete 'oow_pjax_enable_loader'
wp option delete 'oow_pjax_min_loader_duration'
wp option delete 'oow_pjax_enable_forms'
wp option delete 'oow_pjax_custom_js_before'
wp option delete 'oow_pjax_custom_js_after'
wp option delete 'oow_pjax_form_refresh_targets'
wp option delete 'oow_pjax_loader_css'

