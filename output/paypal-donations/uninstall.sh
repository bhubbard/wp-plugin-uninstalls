#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'paypal_donations_options'
wp option delete 'widget_paypal_donations'

