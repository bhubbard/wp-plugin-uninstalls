#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'AcceptStripePayments-settings'
wp option delete 'sdm_advanced_options'
wp option delete 'bpcft_db_version'
wp option delete 'bpcft_configs'

