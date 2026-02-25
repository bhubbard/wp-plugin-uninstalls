#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%allowed_mime_types'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%max_upload_size'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%forbidden_extensions'"

