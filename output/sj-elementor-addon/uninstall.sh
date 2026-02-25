#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sjea_parent_page_url'
wp option delete '_sjea_mailer_services'
wp option delete '_sjea_mailer_campaigns'

