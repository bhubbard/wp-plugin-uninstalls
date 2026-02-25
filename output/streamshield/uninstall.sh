#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'streamshield_tenant'
wp option delete 'streamshield_key'
wp option delete 'streamshield_secret'

