#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lsq_api_key_test'
wp option delete 'lsq_api_key'
wp option delete 'lsq_api_key_expires'

