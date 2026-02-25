#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbai_hash'
wp option delete 'cbai_otl'
wp option delete 'cbai_account'
wp option delete 'cbai_website'
wp option delete 'cbai_version'
wp option delete 'cbai_model'

