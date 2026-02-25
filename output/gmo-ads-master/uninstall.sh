#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gmoadsmaster_activation'
wp option delete 'gmoadsmaster_verification'
wp option delete 'gmoadsmaster_analytics'
wp option delete 'gmoadsmaster_adcodes'

