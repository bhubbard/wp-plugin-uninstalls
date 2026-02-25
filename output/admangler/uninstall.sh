#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'AdMangler_db_version'
wp option delete 'AdMangler_code_version'
wp option delete 'AdMangler_cache_buster'

