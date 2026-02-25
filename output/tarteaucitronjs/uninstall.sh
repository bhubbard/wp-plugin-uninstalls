#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tarteaucitronUUID'
wp option delete 'tarteaucitronToken'
wp option delete 'tarteaucitronShowWidget'

