#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpnhtp_post_category'
wp option delete 'wpnhtp_effect'
wp option delete 'wpnhtp_number_post'
wp option delete 'wpnhtp_order'
wp option delete 'wpnhtp_border_radius'
wp option delete 'wpnhtp_label'
wp option delete 'wpnhtp_label_color'
wp option delete 'wpnhtp_bg_color'
wp option delete 'wpnhtp_text_color'
wp option delete 'wpnhtp_hover_color'
wp option delete 'wpnhtp_plugin_do_activation_redirect'

