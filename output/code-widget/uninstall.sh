#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cw_activation_time'
wp option delete 'cwrn_dismiss'
wp option delete 'cwrn_show_later'
wp option delete 'satc_dismiss'

