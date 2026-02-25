#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmc_mail_use_network_settings'
wp option delete 'wpmc_mail_message'
wp option delete 'wpmc_one_email'
wp option delete 'wpmc_one_use_network_settings'
wp option delete 'wpmc_two_use_network_settings'
wp option delete 'wpmc_three_use_network_settings'
wp option delete 'wpmc_five_use_network_settings'
wp option delete 'wpmc_six_use_network_settings'

