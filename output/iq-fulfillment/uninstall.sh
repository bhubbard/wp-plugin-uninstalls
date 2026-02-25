#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iq_fulfillment_activated'
wp option delete 'iq_fulfillment_installed'
wp option delete 'iq_fulfillment_version'

