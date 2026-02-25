#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'countdowncdt_timer_installed'
wp option delete 'cdt_inf_basics'
wp option delete 'cdt_inf_color'

