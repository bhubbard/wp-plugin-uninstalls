#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fcb-initial-save-version'
wp option delete 'fcb-install-date'
wp option delete 'fcb-alreadyRated'
wp option delete 'fcb-installDate'
wp option delete 'fcb-ratingDiv'
wp option delete 'fcb-v'
wp option delete 'fcb-type'

