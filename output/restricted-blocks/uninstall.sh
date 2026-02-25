#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'daextrebl_options_version'
wp option delete 'daextrebl_database_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_font_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cookie_expiration'"
wp option delete 'daim_dismissible_notice_a'
wp option delete 'daextrebl_font_family'
wp option delete 'daextrebl_container_background_color'
wp option delete 'daextrebl_title_font_color'
wp option delete 'daextrebl_description_font_color'
wp option delete 'daextrebl_validation_message_background_color'
wp option delete 'daextrebl_validation_message_font_color'
wp option delete 'daextrebl_controls_label_color'
wp option delete 'daextrebl_borders_color'
wp option delete 'daextrebl_buttons_background_color'
wp option delete 'daextrebl_buttons_font_color'
wp option delete 'daextrebl_controls_background_color'
wp option delete 'daextrebl_controls_font_color'
wp option delete 'daextrebl_controls_highlight_color'
wp option delete 'daextrebl_controls_scrollbar_color'
wp option delete 'daextrebl_controls_scrollbar_selection_color'
wp option delete 'daextrebl_icons_color'
wp option delete 'daextrebl_margin_top'
wp option delete 'daextrebl_margin_bottom'
wp option delete 'daextrebl_responsive_breakpoint'

