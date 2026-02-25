#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wowp_activation_redirect'
wp option delete 'wowp_phone_number'
wp option delete 'wowp_button_label'

