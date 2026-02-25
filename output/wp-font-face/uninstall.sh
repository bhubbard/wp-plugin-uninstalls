#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fontface-load-css-in-tinymce'
wp option delete 'fontface-load-css-style-in-tinymce'
wp option delete 'fontface-load-in-admin'
wp option delete 'fontface-generate-css-class'
wp option delete 'fontface_font_list_count'
wp option delete 'fontface-css'
wp option delete 'fontface_font_list'

