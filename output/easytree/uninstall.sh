#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easytree_option_exclude_from_pages'
wp option delete 'easytree_option_display_authors'
wp option delete 'easytree_option_exclude_from_authors'
wp option delete 'easytree_option_show_empty_taxs'
wp option delete 'easytree_option_skin'

