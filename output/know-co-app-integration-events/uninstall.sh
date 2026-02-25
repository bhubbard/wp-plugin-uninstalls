#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'know__events__button_styles'
wp option delete 'know__events__button_classes'
wp option delete 'know__events__alert_container_styles'
wp option delete 'know__events__alert_container_classes'
wp option delete 'know__events__alert_heading_styles'
wp option delete 'know__events__alert_heading_classes'
wp option delete 'know__events__login_button_classes'
wp option delete 'know__events__login_button_styles'
wp option delete 'know__events__payment_process_button_classes'
wp option delete 'know__events__payment_process_button_styles'
wp option delete 'know--events--settings-group'

