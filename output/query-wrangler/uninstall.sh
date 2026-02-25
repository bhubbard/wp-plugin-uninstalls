#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qw_plugin_version'
wp option delete 'qw_edit_theme'
wp option delete 'qw_live_preview'
wp option delete 'qw_show_silent_meta'
wp option delete 'qw_meta_value_field_handler'
wp option delete 'qw_widget_theme_compat'

# Delete Transients
wp transient delete 'query_wrangler_meta_keys_cache'

