#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qbppc_entries'
wp option delete 'qbppc_hierarchy_indent_character'
wp option delete 'qbppc_post_type'
wp option delete 'qbppc_post_status'

