#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simpleform-email'
wp option delete 'simpleform-confirmation-message'
wp option delete 'wpsf_db_version'

