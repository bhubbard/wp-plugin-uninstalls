#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twitcategory_uid'
wp option delete 'twitcategory_password'
wp option delete 'twitcategory_category'
wp option delete 'twitcategory_message'
wp option delete 'twitcategory_db_version'

