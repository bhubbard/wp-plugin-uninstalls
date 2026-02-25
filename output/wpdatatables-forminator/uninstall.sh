#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wdtDateFormat'
wp option delete 'wdtTimeFormat'
wp option delete 'wdtNumberFormat'

