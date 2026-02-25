#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flush-opcache-upgrade'
wp option delete 'flush-opcache-hide-button'

