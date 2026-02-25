#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'supervisorcom_v1_secret'
wp option delete 'supervisorcom_v1_store'

