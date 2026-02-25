#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'basic-share-buttons__sites'
wp option delete 'basic-share-buttons__style'
wp option delete 'basic-share-buttons__size'

