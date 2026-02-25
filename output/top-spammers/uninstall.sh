#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'top-spammers_blacklist'
wp option delete 'top-spammers_version'

