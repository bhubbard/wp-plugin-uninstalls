#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tscl_show_activation_notice'
wp option delete 'tscl_settings'
wp option delete 'cl_settings'
wp option delete 'cl_show_activation_notice'

