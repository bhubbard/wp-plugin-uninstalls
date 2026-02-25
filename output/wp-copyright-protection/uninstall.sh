#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcp_exclude_pages'
wp option delete 'wpcp_disable_for_regusers'

