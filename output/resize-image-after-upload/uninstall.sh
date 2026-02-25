#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jr_resizeupload_version'
wp option delete 'jr_resizeupload_width'
wp option delete 'jr_resizeupload_height'
wp option delete 'jr_resizeupload_quality'
wp option delete 'jr_resizeupload_resize_yesno'
wp option delete 'jr_resizeupload_recompress_yesno'
wp option delete 'jr_resizeupload_convertbmp_yesno'
wp option delete 'jr_resizeupload_convertpng_yesno'
wp option delete 'jr_resizeupload_convertgif_yesno'
wp option delete 'jr_resizeupload_news'

