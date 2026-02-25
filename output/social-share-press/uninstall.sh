#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sspp_select_template'
wp option delete 'sspp_show_buttons'
wp option delete 'sspp_show_in_pages'
wp option delete 'sspp_enable_disable'
wp option delete 'sspp_show_social_links'

