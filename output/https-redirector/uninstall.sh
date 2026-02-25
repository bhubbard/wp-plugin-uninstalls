#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'https_redirector_settings'
wp option delete 'httprd_settings'

