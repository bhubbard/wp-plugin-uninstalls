#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'media_features_plugin_version'
wp option delete 'media_features_jpeg_quality'
wp option delete 'media_features_crop'
wp option delete 'media_features_resize'

