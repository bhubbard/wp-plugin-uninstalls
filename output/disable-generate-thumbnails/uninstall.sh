#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disablegeneratethumbnails_threshold'
wp option delete 'disablegeneratethumbnails_exif_rotate'
wp option delete 'disablegeneratethumbnails'

