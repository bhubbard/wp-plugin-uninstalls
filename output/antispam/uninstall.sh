#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spams_detected'
wp option delete 'antispam_db_version'

