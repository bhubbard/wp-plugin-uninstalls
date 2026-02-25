#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dm_keys'

# Delete Transients
wp transient delete 'Quizess'

