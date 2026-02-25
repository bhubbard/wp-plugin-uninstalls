#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'i13_simple_donations_values'
wp option delete 'i13_simple_donations_settings'
wp option delete 'i13_woo_simple_donation_multisite_activated'
wp option delete 'i13_woo_sd_messages'
wp option delete 'i13_simple_donations_msg_settings'
wp option delete 'active_sitewide_plugins'

