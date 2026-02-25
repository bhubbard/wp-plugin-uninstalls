#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Spider_Zoom_tag'
wp option delete 'Spider_Zoom_class'
wp option delete 'Spider_Zoom_id'
wp option delete 'Spider_Zoom_max'
wp option delete 'Spider_Zoom_min'
wp option delete 'Spider_Zoom_imggroup'
wp option delete 'Spider_Zoom_imgsize'
wp option delete 'Spider_Zoom_title'

