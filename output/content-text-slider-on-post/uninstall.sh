#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ctsop_height_display_length_s1'
wp option delete 'ctsop_height_display_length_s2'
wp option delete 'ctsop_height_display_length_s3'
wp option delete 'ctsop_speed'
wp option delete 'ctsop_waitseconds'

