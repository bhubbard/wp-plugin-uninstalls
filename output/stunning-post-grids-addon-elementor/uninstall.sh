#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spga_el_installed_at'
wp option delete 'spga_el_version'
wp option delete 'spga_el_license'

