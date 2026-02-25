#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'converted'
wp option delete 'exchanges'

# Delete Transients
wp transient delete 'sfxexchangerates_flush'

