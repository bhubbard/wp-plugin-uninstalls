#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rdtcp_enable'
wp option delete 'rdtcp_redirect_type'
wp option delete 'rdtcp_custom_page'

