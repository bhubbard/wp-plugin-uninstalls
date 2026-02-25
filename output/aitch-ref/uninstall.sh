#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aitch_ref_settings'
wp option delete 'aitchref_urls'
wp option delete 'aitchref_filters_absolute'
wp option delete 'aitchref_filters_relative'

