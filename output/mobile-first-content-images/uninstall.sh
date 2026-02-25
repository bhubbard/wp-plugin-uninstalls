#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'option_add_css'
wp option delete 'options_add_css_class'
wp option delete 'option_image_size'
wp option delete 'option_image_class'
wp option delete 'EP_MFCI_option'

