#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'snapcall_uid'
wp option delete 'snapcall_api_key'
wp option delete 'snapcall_api_secret'
wp option delete 'snapcall_db_version'

