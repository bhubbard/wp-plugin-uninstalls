#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rh_adjust_title'
wp option delete 'rh_title_class'
wp option delete 'rh_show_page_revisions'
wp option delete 'rh_show_post_revisions'
wp option delete 'rh_show_autosaves'

