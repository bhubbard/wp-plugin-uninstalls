#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wonderform_db_version'
wp option delete 'wonderform_version'
wp option delete 'wonderform_dir'

