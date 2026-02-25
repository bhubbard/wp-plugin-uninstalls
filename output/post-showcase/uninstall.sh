#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pshowcase_settings'
wp option delete 'pshowcase_version'
wp option delete 'pshowcase_flash_notices'

