#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pcav_enable_validation'
wp option delete 'pcav_license_key'
wp option delete 'pcav_api_key'
wp option delete 'pcav_configured_provider'
wp option delete 'pcav_hide_fields'
wp option delete 'pcav_empty_fields'
wp option delete 'pcav_enable_debugmode'
wp option delete 'pcav_autocomplete_off'
wp option delete 'pcav_housenumber_and_addition_line_2'
wp option delete 'pcav_color_placeholder'
wp option delete 'pcav_color_result'

