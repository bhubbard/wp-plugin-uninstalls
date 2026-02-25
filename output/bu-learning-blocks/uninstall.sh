#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bulb_active'
wp option delete 'bulb_cpt_install_dialog'
wp option delete 'bulb_cpt_install'

