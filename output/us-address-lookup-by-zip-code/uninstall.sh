#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'usz_db_configured'
wp option delete 'usz_integration_cf7'
wp option delete 'usz_integration_ninja'
wp option delete 'usz_integration_gravity'
wp option delete 'usz_integration_formidable'

