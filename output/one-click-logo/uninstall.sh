#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ocl_url'
wp option delete 'ocl_installed'
wp option delete 'ocl_version'

