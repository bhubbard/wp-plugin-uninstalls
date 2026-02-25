#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_dragdrop_button_label'
wp option delete 'easy_dragdrop_file_types_allowed'
wp option delete 'easy_dragdrop_max_file_size'
wp option delete 'easy_dragdrop_file_type_error'
wp option delete 'easy_dragdrop_file_size_error'
wp option delete 'easy_dragdrop_max_files'

