#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shootq-api-key'
wp option delete 'shootq-brand-abbreviation'
wp option delete 'shootq-aus-dates'

