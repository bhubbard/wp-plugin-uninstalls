#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jqlb_comments'
wp option delete 'jqlb_automate'
wp option delete 'jqlb_resize_on_demand'
wp option delete 'jqlb_show_download'
wp option delete 'jqlb_navbarOnTop'
wp option delete 'jqlb_resize_speed'
wp option delete 'jqlb_margin_size'
wp option delete 'jqlb_help_text'
wp option delete 'jqlb_loopImages'
wp option delete 'jqlb_resizeCenter'
wp option delete 'jqlb_link_target'

