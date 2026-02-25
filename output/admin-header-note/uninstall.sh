#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adminHeaderNote_message'
wp option delete 'adminHeaderNote_link'
wp option delete 'adminHeaderNote_X'
wp option delete 'adminHeaderNote_Y'
wp option delete 'adminHeaderNote_color'

