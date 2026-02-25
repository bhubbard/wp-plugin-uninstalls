#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flickrAPI_flickrid'
wp option delete 'flickrAPI_settings'
wp option delete 'flickrAPI_version'
wp option delete 'widget_flickrAPI'

