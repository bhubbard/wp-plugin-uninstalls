#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ss_selected_networks'
wp option delete 'ss_title_networks'
wp option delete 'ss_wordpress_text'
wp option delete 'ss_email_text'
wp option delete 'ss_stats'

