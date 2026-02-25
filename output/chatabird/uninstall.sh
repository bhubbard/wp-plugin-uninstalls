#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chatabird_app_id'
wp option delete 'chatabird_identity_key'
wp option delete 'chatabird_enable_logging'

