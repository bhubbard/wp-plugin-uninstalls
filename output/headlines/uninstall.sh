#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'use_fileupload'
wp option delete 'ImageHeadline_options'
wp option delete 'ImageHeadline_settings'

