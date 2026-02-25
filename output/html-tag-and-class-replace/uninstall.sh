#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'html_class_replace'
wp option delete 'html_tag_replace'
wp option delete 'html_tag_replace_migration'
wp option delete 'html_old_class'
wp option delete 'html_new_class'
wp option delete 'html_old_tag'
wp option delete 'html_new_tag'

