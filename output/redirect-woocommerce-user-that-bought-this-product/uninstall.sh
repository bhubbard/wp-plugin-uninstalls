#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'wcrebtp_good_luck_admin_notice'
wp transient delete 'wcrebtp_check_if_installed'

