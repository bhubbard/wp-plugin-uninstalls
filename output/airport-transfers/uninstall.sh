#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ns-airport-transfers-admin-email'
wp option delete 'ns-airport-transfers-contact-email'
wp option delete 'ns-airport-transfers-contact-phone'
wp option delete 'ns-airport-transfers-country'
wp option delete 'ns-airport-transfers-resort'
wp option delete 'ns-airport-transfers-time-format'

