#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quriobot_path'
wp option delete 'quriobot_init'
wp option delete 'quriobot_version'

