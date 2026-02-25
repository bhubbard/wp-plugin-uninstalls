#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flu_maximum_execution_time'
wp option delete 'flu_max_file_size_uploads'

