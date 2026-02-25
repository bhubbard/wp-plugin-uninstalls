#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pplb_options'
wp option delete 'pplb_button_position'
wp option delete 'pplb_pass_expires'
wp option delete 'pplb_button_filter'

