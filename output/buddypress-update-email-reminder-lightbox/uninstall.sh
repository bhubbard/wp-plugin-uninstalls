#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lightbox_alerts_days'
wp option delete 'border_color'
wp option delete 'background_color'
wp option delete 'header_color'
wp option delete 'email_address_color'
wp option delete 'lb_link_color'

