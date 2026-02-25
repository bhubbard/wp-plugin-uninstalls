#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_moon_api_key'
wp option delete '_moon_default_position'
wp option delete '_moon_default_effect'
wp option delete '_moon_default_bgcolor'
wp option delete '_moon_default_primcolor'
wp option delete '_moon_default_reflect'
wp option delete '_moon_default_indicator'
wp option delete '_moon_default_edge'
wp option delete '_moon_default_speed'

