#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'evtb_version'
wp option delete 'evtb_activation_time'
wp option delete 'evtb_initial_save_version'
wp option delete 'evtb_install_date'

