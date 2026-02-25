#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mid_photocard_default_bg_image'
wp option delete 'mid_photocard_default_site_logo'
wp option delete 'mid_photocard_default_site_name'
wp option delete 'mid_photocard_default_site_icon'
wp option delete 'mid_photocard_default_bg_solid_1'
wp option delete 'mid_photocard_default_bg_solid_2'
wp option delete 'mid_photocard_default_bg_color_1'
wp option delete 'mid_photocard_default_bg_color_2'
wp option delete 'mid_photocard_default_title_color'
wp option delete 'mid_photocard_default_dc_bg_color'
wp option delete 'mid_photocard_default_dc_text_color'
wp option delete 'mid_photocard_default_site_logo_new'
wp option delete 'mid_photocard_site_logo_enabled'
wp option delete 'mid_photocard_site_icon_enabled'
wp option delete 'mid_photocard_title_shadow_enabled'
wp option delete 'mid_photocard_canvas_width'
wp option delete 'mid_photocard_canvas_height'
wp option delete 'mid_photocard_public_enabled'
wp option delete 'mid_photocard_default_comments_text'
wp option delete 'mid_photocard_copy_url_enabled'

