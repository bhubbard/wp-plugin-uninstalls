#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_mouring_db_version'
wp option delete 'simple_mouring_speed'
wp option delete 'simple_mouring_interval'
wp option delete 'simple_mouring_type'

