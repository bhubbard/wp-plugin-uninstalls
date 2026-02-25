#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'unique_file_version'
wp option delete 'unique_file_rename_md5'
wp option delete 'unique_file_must_one'
wp option delete 'unique_file_without_siteid'
wp option delete 'unique_file_prevent_deletion'

