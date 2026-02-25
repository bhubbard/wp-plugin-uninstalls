#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_woie_settings_obj'
wp option delete 'woie_options'
wp option delete 'woie_filter_meta_keys'
wp option delete 'woie_versions_type'

