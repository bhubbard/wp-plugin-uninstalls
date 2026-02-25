#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'speakol_argbox_status'
wp option delete 'speakol_app_id'
wp option delete 'speakol_box_width'
wp option delete 'speakol_displays_in'
wp option delete 'speakol_lang'
wp option delete 'speakol_title'
wp option delete 'speakol_no_title'

