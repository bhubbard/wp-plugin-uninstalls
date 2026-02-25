#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fwebmanifest_description'
wp option delete 'fwebmanifest_start_url'
wp option delete 'fwebmanifest_display'
wp option delete 'fwebmanifest_orientation'
wp option delete 'fwebmanifest_name'
wp option delete 'fwebmanifest_short_name'
wp option delete 'fwebmanifest_lang'
wp option delete 'fwebmanifest_dir'
wp option delete 'fwebmanifest_bgcolor'
wp option delete 'fwebmanifest_themecolor'

