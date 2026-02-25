#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dlucs_installed'
wp option delete 'dlucs_version'
wp option delete 'dlucs-opt'

