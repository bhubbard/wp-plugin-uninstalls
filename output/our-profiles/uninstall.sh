#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ourprofiles_links'
wp option delete 'ourprofiles_options'
wp option delete 'ourprofiles_services'

