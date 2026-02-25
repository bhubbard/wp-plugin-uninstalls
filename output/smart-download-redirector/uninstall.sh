#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smartdr_styles'
wp option delete 'smartdr_destination_styles'
wp option delete 'smartdr_rate_limit'
wp option delete 'smartdr_target_domains'
wp option delete 'smartdr_custom_heading'
wp option delete 'smartdr_manual_link_text'
wp option delete 'smartdr_show_title'
wp option delete 'smartdr_show_manual_link'
wp option delete 'smartdr_layout_style'
wp option delete 'smartdr_countdown_time'
wp option delete 'smartdr_redirect_delay'
wp option delete 'smartdr_shortcode_page'
wp option delete 'smartdr_show_destination'
wp option delete 'smartdr_destination_display_step'
wp option delete 'smartdr_manual_link_display_step'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'smartdr_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_smartdr_option_updated_%' OR option_name LIKE '_site_transient_smartdr_option_updated_%'"

