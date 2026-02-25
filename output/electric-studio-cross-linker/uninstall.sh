#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'selectpage'
wp option delete 'PluralForms'
wp option delete 'exactMatchesOnly'
wp option delete 'selectpost'

