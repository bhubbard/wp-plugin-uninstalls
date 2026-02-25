#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ipblock_enabled'
wp option delete 'ipblock_maxcount'
wp option delete 'ipblock_ips'
wp option delete 'ipblock_interval'

