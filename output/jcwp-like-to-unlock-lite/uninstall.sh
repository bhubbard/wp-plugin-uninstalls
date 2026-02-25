#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jcorgltu_active'
wp option delete 'jcorgltu_facebook_app_id'
wp option delete 'jcorgltu_show_faces'
wp option delete 'jcorgltu_width'
wp option delete 'jcorgltu_font'
wp option delete 'jcorgltu_colorscheme'
wp option delete 'jcorgltu_hide'
wp option delete 'jcorgltu_text_to_display'
wp option delete 'jcorgltu_disableon_mobile'
wp option delete 'jcorgltu_disableon_tablet'

