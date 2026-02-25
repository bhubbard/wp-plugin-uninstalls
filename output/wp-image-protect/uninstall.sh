#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpippDisplay_visible_enabled'
wp option delete 'wpippDisplay_watermark_on_size'
wp option delete 'wpippDisplay_watermark_text'
wp option delete 'wpippDisplay_watermark_text_font'
wp option delete 'wpippDisplay_watermark_text_size'
wp option delete 'wpippDisplay_watermark_text_colour'
wp option delete 'wpippDisplay_watermark_text_border_width'
wp option delete 'wpippDisplay_watermark_text_background_colour'
wp option delete 'wpippDisplay_wpipp_watermark_image_url'
wp option delete 'wpippDisplay_watermark_position'
wp option delete 'wpippDisplay_watermark_transparency'
wp option delete 'wpippDisplay_caching_option'
wp option delete 'wpippDisplay_hotlinking_option'
wp option delete 'wpippDisplay_render_option'
wp option delete 'wpippDisplay_watermark_scale'
wp option delete 'wpippDisplay_debug_option'
wp option delete 'wpipp_continue_install'
wp option delete 'wpipp_version'
wp option delete 'wpipp_watermarks_not_set_ignore'
wp option delete 'wpippDisplay_htaccess_option'
wp option delete 'wpipp_mode'
wp option delete 'wpipp_textdomain'
wp option delete 'wpipp_active'
wp option delete 'wpipp_premium_install_ignore'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpipp_exclude_from_watermark'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpipp_exclude_from_watermark'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpipp_exclude_from_watermark'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpipp_exclude_from_watermark'"
