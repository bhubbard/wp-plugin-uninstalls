#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_smsrunot_enable'
wp option delete 'wp_smsrunot_apikey'
wp option delete 'wp_smsrunot_number'

