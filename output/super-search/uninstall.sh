#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ss_exclude_child'
wp option delete 'ss_easy_mode'
wp option delete 'ss_show_children'
wp option delete 'ss_manual_cats'
wp option delete 'ss_template_mode'
wp option delete 'ss_template'

