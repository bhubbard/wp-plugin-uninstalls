#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'smtardi_tariff_categories'
wp option delete 'smtardi_duty_percent'

