#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'contactuswp_form_options'
wp option delete 'contactuswp_icon_direction'
wp option delete 'contactuswp_icon_shape'
wp option delete 'contactuswp_icon_color'
wp option delete 'contactuswp_form_labels'
wp option delete 'contactuswp_send_to_email'

